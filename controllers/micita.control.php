 <?php
  require_once("libs/template_engine.php");
  require_once("models/miexpe.model.php");
  
  function run(){
    site_addStyle("estiloexpe");
    $datosARenderizar = array();
    $datosARenderizar["micita"] = micita();
    renderizar("micita",$datosARenderizar,"layout4.view.tpl");
    
  }
run ();

?>