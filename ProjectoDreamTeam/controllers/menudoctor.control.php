<?php

  require_once("libs/template_engine.php");
  
  function run(){
    if(mw_estaLogueado()){
          site_addStyle("estilomenu");
           renderizar("menudoctor",array(),"layout2.view.tpl");
    }
    else{
     // mw_redirectToLogin("page=home");
      echo "<script>alert('Debe Iniciar Sesssion');location.href ='javascript:history.back()';</script>";
      //sleep(15);
       }
    
  }
 

 run();
?>