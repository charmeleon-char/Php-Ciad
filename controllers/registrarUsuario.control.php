<?php

  require_once("libs/template_engine.php");
  require_once("models/usuarios.model.php");
  function run(){
    site_addStyle("inicio");
    $htmlData = array();
    $htmlData["mostrarErrores"] = false;
    $htmlData["errores"] = array();
    $htmlData["txtUserName"] = "";
    $htmlData["txtEmail"]="";
    
    if(isset($_POST["btnRegister"])){
      $htmlData["txtUserName"] = $_POST["txtUserName"];
      $htmlData["txtEmail"] =  $_POST["txtEmail"];
      
      $pswd = $_POST["txtPswd"];
      $pswdCnf = $_POST["txtPswdCnf"];
    
     if($htmlData["txtUserName"] == "" ||  $htmlData["txtEmail"] == "" ||$pswd == "" ||  $pswdCnf == "")
     {
      $htmlData["mostrarErrores"] = true;
      $htmlData["errores"][]=array("errmsg"=>"Llene Todos Los Campos!");
      
     }
      else{
      if($pswd == $pswdCnf){
         $checkUser = obtenerUsuario($htmlData["txtEmail"]);
        if(count($checkUser)==0){
          $htmlData["mostrarErrores"] = true;
          $htmlData["errores"][]=array("errmsg"=>"Correo Electrónico ya Usado!");
        }else{
          $fchingreso = time();
          $pswdSalted = "";
          if($fchingreso % 2 == 0){
            $pswdSalted = $pswd . $fchingreso;
          }else{
            $pswdSalted = $fchingreso . $pswd;
          }
          
          $pswdSalted = md5($pswdSalted);
          
          insertUsuario(   $htmlData["txtUserName"],
                        $htmlData["txtEmail"],
                        $fchingreso, $pswdSalted);
        $Email =$htmlData["txtEmail"];
        require("controllers/class.phpmailer.php"); // Requiere PHPMAILER para poder enviar el formulario desde el SMTP de google
        $mail = new PHPMailer();
        $mail->From     = "rayelmejor1@gmail.com";
        $mail->FromName = "CIAD"; 
        $mail->AddAddress($Email); // Dirección a la que llegaran los mensajes.

// Aquí van los datos que apareceran en el correo que reciba

    $mail->WordWrap = 50; 
    $mail->IsHTML(true);     
    $mail->Subject  =  "Confirmacion de Contraseña"; // Asunto del mensaje.
    $mail->Body     =  "Link: $pswdSalted  \n<br />". // Nombre del usuario
    "Email: $Email \n<br />".    // Email del usuario
    "Mensaje: $pswdSalted \n<br />"; // Mensaje del usuario

// Datos del servidor SMTP, podemos usar el de Google, Outlook, etc...

    $mail->IsSMTP(); 
    $mail->Host = "ssl://smtp.gmail.com:465";  // Servidor de Salida. 465 es uno de los puertos que usa Google para su servidor SMTP
    $mail->SMTPAuth = true; 
    $mail->Username = "rayelmejor1@gmail.com";  // Correo Electrónico
    $mail->Password = "Royman1993192010"; // Contraseña del correo

    if ($mail->Send())
    echo "<script>alert('Formulario enviado exitosamente, le responderemos lo más pronto posible.');location.href ='javascript:history.back()';</script>";
    else
    echo "<script>alert('Error al enviar el formulario');location.href ='javascript:history.back()';</script>";

}
      
  
        
      }else{
        $htmlData["mostrarErrores"] = true;
        $htmlData["errores"][]=array("errmsg"=>"Contraseñas no coinciden");
      }
    }
    }
    renderizar("registrarUsuario",$htmlData);
  }
  run();
?>