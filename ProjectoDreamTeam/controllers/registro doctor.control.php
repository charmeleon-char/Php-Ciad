<?php
  require_once("libs/template_engine.php");
  require_once("models/registro doctores.model.php");
  
  function run(){
  
    if(mw_estaLogueado()){
        site_addStyle("estiloLoginRegistro");
   //   site_addStyle("inicio");
        
    //$htmlData = array();
    $htmlData["txtUserName"]="";
    $htmlData["txtApellido"]="";
    $htmlData["Especialidad"]="";
    $htmlData["txtEmail"]="";
    $htmlData["txtPswd"]="";
    $htmlData["txtPswdCnf"]="";
    
    
    if(isset($_POST["btnRegister"]))
    {
      $htmlData["txtUserName"] = $_POST["txtUserName"];
      $htmlData["txtApellido"] = $_POST["txtApellido"];
      $htmlData["Especialidad"] =  $_POST["Especialidad"];
      $htmlData["txtEmail"]=$_POST["txtEmail"];
      $htmlData["txtPswd"]=$_POST["txtPswd"];
      $htmlData["txtPswdCnf"]=$_POST["txtPswdCnf"];
        
          insertDoctor($htmlData["txtUserName"],$htmlData["txtApellido"], $htmlData["Especialidad"]
                    ,$htmlData["txtEmail"]);
          
         insertUsuarioDoctor($htmlData["txtUserName"], $htmlData["txtEmail"], $htmlData["txtPswd"]);
    
     }
   renderizar("registro doctor",$htmlData,"layout5.view.tpl");
    }
  else{
    echo "<script>alert('Debe Iniciar Sesssion');location.href ='javascript:history.back()';</script>";
    }  
  }
  run(); 
?>