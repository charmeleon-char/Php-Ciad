<?php
/* Home Controller
 * 2014-10-14 
 * Created By OJBA
 * Last Modification 2014-10-14 20:04
 */
  require_once("libs/template_engine.php");
  
  function run(){
    site_addStyle("informacion");
    site_addStyle("inicio");
    renderizar("informacion",array());
    
  }
 

 run();
?>