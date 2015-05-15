<?php
  require_once("libs/template_engine.php");
  require_once("models/expedientes.model.php");
  
  function run(){
    if(mw_estaLogueado()){
         site_addStyle("estilos");
    
   
    $htmlData = array();
    $htmlData["txtResp"]="";
    $htmlData["txtNomb"]="";
    $htmlData["txtApe"]="";
    $htmlData["txtId"]="";
    $htmlData["txtDate"]="";
    $htmlData["txtDirec"]="";
    $htmlData["txtTel"]="";
    $htmlData["txtCel"]="";
    
    
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
    
    renderizar("resumenClinico",$htmlData,"layout2.view.tpl");
  }else{
    echo "<script>alert('Debe Iniciar Sesssion');location.href ='javascript:history.back()';</script>";
      }
  }
  run();


  
  
?>