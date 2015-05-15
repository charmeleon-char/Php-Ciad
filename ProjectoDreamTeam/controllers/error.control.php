<?php
/* Error Controller
 * 2014-10-14 
 * Created By OJBA
 * Last Modification 2014-10-14 20:04
 */
  require_once("libs/template_engine.php");
  function run(){
    site_addStyle("inicio");
    http_response_code(404);
    renderizar("error", array("page_title"=>"Error 404",
                              "errors"=>array(
                                           array("error_msg"=>"Regrese al Inicio "),
                                           array("error_msg"=>"Verifique la Ruta Especificada "),
                                           ),
                              "showErrors" => true
                            )
               );
  }
 

  run();
?>