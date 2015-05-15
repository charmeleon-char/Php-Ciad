<?php

  require_once("libs/template_engine.php");
  
  function run(){
    site_addStyle("doctor");
  
    site_addStyle("inicio");
    renderizar("doctores",array());
    
    
  }
 

 run();
?>