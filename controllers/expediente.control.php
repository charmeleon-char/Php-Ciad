<?php
  require_once("libs/template_engine.php");
  require_once("models/expedientes.model.php");
  
  function run(){
    if(mw_estaLogueado()){
        site_addStyle("estilos");
    
   //     site_addStyle("inicio");
        
    $htmlData = array();
    $htmlData["txtResp"]="";
    $htmlData["txtNomb"]="";
    $htmlData["txtApe"]="";
    $htmlData["txtId"]="";
    $htmlData["txtDate"]="";
    $htmlData["txtDirec"]="";
    $htmlData["txtTel"]="";
    $htmlData["txtCel"]="";
    $htmlData["txtCit"]="";
    $htmlData["txtDiab"]="";
    $htmlData["txtTrat"]="";
    $htmlData["txtDoct"]="";
    
    
    if(isset($_POST["btnGuardar"]))
    {
      $htmlData["txtExp"] = $_POST["txtExp"];
      $htmlData["txtNomb"] = $_POST["txtNomb"];
      $htmlData["txtApe"] =  $_POST["txtApe"];
      $htmlData["txtDirec"]=$_POST["txtDirec"];
      $htmlData["txtTel"]=$_POST["txtTel"];
      $htmlData["txtCel"]=$_POST["txtCel"];
    
      $htmlData["txtResp"]=$_POST["txtResp"];
        
          insertPac($htmlData["txtExp"],$htmlData["txtNomb"], $htmlData["txtApe"]
                    ,$htmlData["txtDirec"],$htmlData["txtDate"],$htmlData["txtTel"],
                    $htmlData["txtCel"]);
          
         insertExp($htmlData["txtResp"]);
          
       
    }
        
    if(isset($_POST["btnGuardar2"]))
    {    
      $htmlData["txtCit"]=$_POST["txtCit"];
      $htmlData["txtDiab"]=$_POST["txtDiab"];
      $htmlData["txtTrat"]=$_POST["txtTrat"];
      $htmlData["txtDoct"]=$_POST["txtDoct"];
        
     //    insertCita($htmlData["txtCit"]);
         insertDetExp($htmlData["txtDiab"],$htmlData["txtTrat"]);
     //  renderizar("expedientes",$htmlData);
 
     }
     renderizar("expedientes",$htmlData,"layout2.view.tpl");
   
   //renderizar("expedientes",$htmlData);
  }
  else{
    echo "<script>alert('Debe Iniciar Sesssion');location.href ='javascript:history.back()';</script>";
      }
  }
  
  
  
  
  run();

  
  
?>