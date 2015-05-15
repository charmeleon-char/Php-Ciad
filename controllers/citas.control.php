<?php
/* Home Controller
 * 2014-10-14 
 * Created By OJBA
 * Last Modification 2014-10-14 20:04
 */
  require_once("libs/template_engine.php");
  require_once("models/citas.model.php");
    function run(){
    $htmlData = array();
    site_addStyle("estilos");
    
  //  $especialidad = "cardiologo";
 // $valor=1;
     $htmlData["especialidades"]="";//=obtenerDoctores($valor);
     
    //$htmlData["especialidades"]=obtenerDoctores($especialidad);
    if(isset($_POST["Especialidad"]))
    {
      $htmlData["especialidades"]=obtenerDoctores($_POST["Especialidad"]);
      
    }
    
    if(isset($_POST["btnGuardar"]))
    {
      $htmlData["especialidades"]= $_POST["Especialidad"];
      $htmlData["fecha"] = $_POST["fecha"];
      $htmlData["fecha"] = $_POST["txtExpediente"];
      $htmlData["fecha"] = $_POST["txtPacciente"];
      $htmlData["fecha"] = $_POST["empleado"];
      try {
      asignarCita($_POST["fecha"],$_POST["Hora"],$_POST["txtPacciente"],$_POST["txtExpediente"],$_POST["empleado"]);
      //$htmlData["Especialidades"]= obtenerDoctores($especialidad);
      }
      catch(Exception $e)
      {
      echo "IMPRIMIMOS EL MENSAJE QUE QUEREMOS QUE VEAN MAS EL ERROR CACHADO EN ";
     }
    }
    
  renderizar("citas",$htmlData,"layout2.view.tpl");
    
     }
   
 

 run();
?>