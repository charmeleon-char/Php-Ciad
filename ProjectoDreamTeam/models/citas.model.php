<?php
    //modelo de datos de expedientes & pacientes
    require_once("dao/dao.php");
    
    function asignarCita($fecha,$hora,$Paciente,$Expendiente,$empleado){
        $strsql = "INSERT INTO citas 
                    (fecha, hora, Expedientes_idExpedientes, Expedientes_Pacientes_idpacientes, Empleados_idEmpleados)
                   VALUES
                    ('%s','%s','%d','%d','%d');";
            $strsql = sprintf($strsql,valstr($fecha),valstr($hora),$Paciente,$Expendiente,$empleado);
        if(ejecutarNonQuery($strsql)){
            return getLastInserId();
        }
        return 0;
    }
    
      function obtenerDoctores($especialidad){
        $especialidades = array();
       // $especialidad = 5;
     $sqlstr= sprintf("select * from empleados where Cargo_idCargo = %d;", $especialidad);
      
     //$sqlstr= sprintf("select * from empleados");
        $especialidades = obtenerRegistros($sqlstr);
        return $especialidades;
    }
    
?>