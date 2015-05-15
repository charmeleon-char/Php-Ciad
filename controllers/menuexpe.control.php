<?php

  require_once("libs/template_engine.php");
  
  function run(){
    site_addStyle("estiloexpe");
    renderizar("menuexpe",array(),"layout2.view.tpl");
  }
 

 run();
?>