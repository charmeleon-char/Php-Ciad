<?php



require_once("libs/template_engine.php");
require_once("models/receta.model.php");

  function run(){
   if(mw_estaLogueado()){
 site_addStyle("estilos");
     $htmlData = array();
     $htmlData["txtPaci"]="";
     $htmlData["txtExpe"]="";
     $htmlData["receta"]="";
     
    if(isset($_POST["btnGuardar"]))
    {
      
      $htmlData["txtPaci"] = $_POST["txtIdpaciente"];
      $htmlData["txtExpe"] = $_POST["txtIdexpediente"];
      $htmlData["receta"] =$_POST["receta"];
      
    insertReceta($htmlData["txtPaci"],$htmlData["txtExpe"],$htmlData["receta"]);
     }
   renderizar("receta",$htmlData,"layout2.view.tpl");
    
  }
  else{
   echo "<script>alert('Debe Iniciar Sesssion');location.href ='javascript:history.back()';</script>";
      
  }
 }
  run();
?>