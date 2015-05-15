<?php
    //modelo de datos de expedientes & pacientes
    require_once("libs/dao.php");
    
    function obtenerDet(){
        $det = array();
        $sqlstr = "select * from detalle_expediente;";
        $det = obtenerRegistros($sqlstr);
        return $det;
    }
   
    
    function insertDet($detExpEdad,$detExpAlt,$detExpPres,$detExpGluc,$detExpMot,$detExpDiag){
        $strsql = "INSERT INTO detalle_expediente;
                    (Edad,altura,temperatura,presion,glucosa,motivo,diagnostico,Expedientes_idExpedientes)
                   VALUES
                    ('%d','%d','%d','%d','%d','%s','%s','1');";
            $strsql = sprintf($strsql,$detExpEdad,$detExpAlt,$detExpPres,$detExpGluc,valstr($detExpMot),
                                    valstr($detExpDiag));
        if(ejecutarNonQuery($strsql)){
            return getLastInserId();
        }
        return 0;
    }
       
?>