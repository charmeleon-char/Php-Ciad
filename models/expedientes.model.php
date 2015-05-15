<?php
    //modelo de datos de expedientes & pacientes
    require_once("dao/dao.php");
    
    function obtenePac(){
        $pac = array();
        $sqlstr = "select * from pacientes;";
        $pac = obtenerRegistros($sqlstr);
        return $pac;
    }
   
    
    function insertPac($pacId,$pacNom,$pacApe,$pacDir,$pacEdad,$pacTel,$pacCel){
        $strsql = "INSERT INTO pacientes
                    (identidad,nombre,apellido,direccion,fechaNac,telefono,celular,Roles_idRoles)
                   VALUES
                    ('%d','%s','%s','%s','%d','%d','%d','1');";
            $strsql = sprintf($strsql,$pacId,valstr($pacNom),
                                    valstr($pacApe),
                                    valstr($pacDir),$pacEdad,$pacTel,$pacCel);
        if(ejecutarNonQuery($strsql)){
            return getLastInserId();
        }
        return 0;
    }
    
        function insertExp($expResp){
        $strsql = "INSERT INTO expedientes
                    (fechaApertura,responsable,Pacientes_idpacientes,Empleados_idEmpleados)
                   VALUES
                    (now(),'%s','1','1');";
            $strsql = sprintf($strsql,valstr($expResp));
        if(ejecutarNonQuery($strsql)){
            return getLastInserId();
        }
        return 0;
    }
    
        function insertCita($expCita){
        $strsql = "INSERT INTO citas
                    (Expedientes_idExpedientes,Expedientes_Pacientes_idpacientes)
                   VALUES
                    ('1','1');";
            $strsql = sprintf($strsql);
        if(ejecutarNonQuery($strsql)){
            return getLastInserId();
        }
        return 0;
    }
    
    
    
     function insertDetExp($expDiab,$expTrata){
        $strsql = "INSERT INTO detalle_expediente
                    (motivo,diagnostico,Expedientes_idExpedientes)
                   VALUES
                    ('%s','%s','1');";
            $strsql = sprintf($strsql,valstr($expDiab),valstr($expTrata));
        if(ejecutarNonQuery($strsql)){
            return getLastInserId();
        }
        return 0;
    }
?>