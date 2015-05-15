<?php
/* Home Controller
 * 2014-11-04 
 * Created By RACB
 * Last Modification 2014-10-14 20:04
 */
  //require_once("modelos/expediente.php");
  require_once("models/tratamiento.model.php");
  require_once("libs/template_engine.php");
  function run(){
         site_addStyle("inicio");
        $htmlData= array();
   /* $htmlData["mostrarErrores"]= false;
    $htmlData["errores"]= array();
    $htmlData["txtUserName"]= "";
    $htmlData["txtEmail"]= "";
    //renderizar("registro",$htmlData);
    */
   
    if(isset($_POST["btnGuardar"])){
      
      $txtdescripcion = $_POST["txtdescripcion"];
      $txtmedicamento= $_POST["txtmedicamento"];
      $txtidexpediente= $_POST["txtidexpediente"];
      $txtidpacientes= $_POST["txtidpacientes"];
      guardarTratamiento($txtdescripcion,$txtmedicamento,$txtidexpediente,$txtidpacientes);

    } 
     renderizar("registrarTratamiento",$htmlData);
  }
  run();
  
   
  
?>