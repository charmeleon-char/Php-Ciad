<?php
        
     require_once("dao/dao.php");
    
    function guardarTratamiento($txtdescripcion,$txtmedicamento,$txtidexpediente,$txtidpacientes){
        $strsql = "INSERT INTO Tratamiento(descripcion,medicamento,
        Expedientes_idExpedientes,Expedientes_Pacientes_idpacientes)
        VALUES('%s','%s','1','1')"; 
        
            $strsql = sprintf($strsql,valstr($txtdescripcion),
                                    valstr($txtmedicamento),
                                    $txtidexpediente,$txtidpacientes);
        if(ejecutarNonQuery($strsql)){
            return getLastInserId();
        }
        return 0;
    }
        
    
    
?>