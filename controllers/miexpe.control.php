 <?php
  require_once("libs/template_engine.php");
  require_once("models/miexpe.model.php");
  
  function run(){
    site_addStyle("estiloexpe");
    $datosARenderizar = array();
    $datosARenderizar["miexpe"] = miexpe();
    $datosARenderizar["miexpe1"]= miexpe1();
    renderizar("miexpe",$datosARenderizar,"layout4.view.tpl");
  }

run()

?>