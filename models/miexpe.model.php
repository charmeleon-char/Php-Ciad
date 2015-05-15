<?php
require_once("dao/dao.php");


  function micita(){
        $x="1";
        $cita = array();
        $sqlstr = "select idCitas,fecha from citas where Expedientes_Pacientes_idpacientes='$x';";
        $cita = obtenerRegistros($sqlstr);
        return $cita;
    }
   
   
 function miexpe(){
        $codigo="1";
        $miexpe= array();
        $sqlstr="select nombre,apellido,direccion from pacientes where idpacientes='$codigo';";
        $miexpe= obtenerRegistros($sqlstr);  
        return $miexpe;
  }
  
  function miexpe1(){
    $codigo="1";
    $miexpe1=array();
    $sqlstr="select edad,motivo from detalle_expediente where Expedientes_idExpedientes='$codigo';";
    $miexpe1=obtenerRegistros($sqlstr);
    return $miexpe1;
  }
  
?>

