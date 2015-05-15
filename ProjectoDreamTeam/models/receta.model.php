<?php
    //modelo de datos de expedientes & pacientes
    require_once("dao/dao.php");
    
        function insertReceta($ExpedientePaciId,$ExpedienteExpeID,$ExpedienteDes){
        $strsql = "INSERT INTO recetas
                    (Expedientes_Pacientes_idpacientes,Expedientes_idExpedientes,descripcion)
                   VALUES
                    ('%s','%s','%s');";
            $strsql = sprintf($strsql,valstr($ExpedientePaciId),
                              valstr($ExpedienteExpeID),
                              valstr($ExpedienteDes));
         if(ejecutarNonQuery($strsql)){
         return getLastInserId();
        }
        return 0;
    }
    
    ?>