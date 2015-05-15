<?php
  
  require_once("libs/template_engine.php");
  require_once("models/usuarios.model.php");
   
  function run(){
   
    site_addStyle("estiloLoginRegistro");
    site_addStyle("errormsg"); 
   
     $htmlData = array();
    $htmlData["mostrarErrores"] = false;
    $userName = "";
    $returnUrl = "";
    $errores = array();
    if(isset($_POST["submit"]))
    {  $userName = $_POST["usuario"];
        $pswd = $_POST["contrasenia"];
        $usuario = obtenerUsuario($userName)[0];
       if(!verificarUsuario($usuario,$pswd,$htmlData))
           {
             $htmlData["mostrarErrores"] = true;
            $htmlData["errores"][]=array("errmsg"=>"Usuario No Valido");
           }
           elseif(verificarUsuario($usuario,$pswd,$htmlData))
          {
            $pswd =verificarUsuario($usuario,$pswd,$htmlData);
          }
         if((!verificarContraseña($usuario,$pswd,$userName)) && verificarUsuario($usuario,$pswd,$htmlData))
           {
               $htmlData["mostrarErrores"] = true;
                  $htmlData["errores"][]=array("errmsg"=>"Contraseña o Usuario Incorrecto");
                
            }     
          
        if(verificarUsuario($usuario,$pswd,$htmlData) && verificarContraseña($usuario,$pswd,$userName) )
              {
              verificarTipoUsuario($usuario,$userName);
         
            }
      

    }
          
       
        
    
    if(isset($_POST["btnRegister"])){
       $htmlData = array();
      $htmlData["mostrarErrores"] = false;
      $htmlData["errores"] = array();
      $htmlData["txtUserName"] = "";
      $htmlData["txtEmail"]="";
      $htmlData["txtUserName"] = $_POST["txtUserName"];
      $htmlData["txtEmail"] =  $_POST["txtEmail"];
      $pswd = $_POST["txtPswd"];
      $pswdCnf = $_POST["txtPswdCnf"];
    
      if($htmlData["txtUserName"] == "" ||  $htmlData["txtEmail"] == "" ||$pswd == "" ||  $pswdCnf == "" )
      {
       $htmlData["mostrarErrores"] = true;
       $htmlData["errores"][]=array("errmsg"=>"Llene Todos Los Campos!");

      
       }  
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
         
          require_once("./controllers/correoenvio.control.php");
          $pswdSalted = md5(time());
          $body="http://127.0.0.1:3306/index.php?page="."act".$pswdSalted;
          $email = $htmlData["txtEmail"]; 
          correo($email,$body);
          header("Location:index.php?page=home");
         die();
        }
      
       
    }else{       $htmlData["mostrarErrores"] = true;
          $htmlData["errores"][]=array("errmsg"=>"Contraseñas no Coinciden!");
   }
  
   }
   renderizar("login",$htmlData,"layout3.view.tpl");
   
  } 
  run();
?>