<?php
    require_once("dao/dao.php");
    
    function insertDoctor($nombre, $apellido,
                           $especialidad, $correo){
        $strsql = "INSERT INTO empleados
                    (nombre, apellido, especialidad,
                    correo, Cargo_idCargo)
                   VALUES
                    ('%s', '%s','%s','%s', '1');";
        $strsql = sprintf($strsql, valstr($nombre),
                                    valstr($apellido),
                                    valstr($especialidad),
                                    valstr ($correo));
        
        if(ejecutarNonQuery($strsql)){
            return getLastInserId();
        }
        return 0;
    }
    
    function insertUsuarioDoctor($userName, $userEmail,
                           $userPswd){
        $strsql = "INSERT INTO usuario
                    (usuarionom, usuarioemail, usuariopwd, usuarioest, usuariofching,  usuariolstlgn,tipo)
                   VALUES
                    ('%s', '%s','%s','INA', now() , null,'1');";
        $strsql = sprintf($strsql, valstr($userName),
                                    valstr($userEmail),
                                    $userPswd);
        
        if(ejecutarNonQuery($strsql)){
            return getLastInserId();
        }
        return 0;
    }
    

?>