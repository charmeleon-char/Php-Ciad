<?php
    require_once("dao/dao.php");
    
    function obtenerUsuario($userName){
        $usuario = array();
        $sqlstr = sprintf("SELECT idusuario, usuarioemail, usuarionom, usuariopwd, usuarioest, UNIX_TIMESTAMP(usuariofching) as usuariofching, usuariolstlgn ,tipo FROM usuario where usuarioemail = '%s';",$userName);
        $usuario = obtenerUnRegistro($sqlstr);
        return $usuario;
    }
    
    function insertUsuario($userName, $userEmail,
                           $timestamp, $password){
        $strsql = "INSERT INTO usuario
                    (usuarioemail, usuarionom, usuariopwd,
                    usuarioest, usuariofching,  usuariolstlgn,tipo)
                   VALUES
                    ('%s', '%s','%s','INA', now() , null,'1');";
        $strsql = sprintf($strsql, valstr($userEmail),
                                    valstr($userName),
                                    $password);
        
        if(ejecutarNonQuery($strsql)){
            return getLastInserId();
        }
        return 0;
    }
    
    function actualizarFechaUsuario($username)
    {
        $strsql = sprintf("UPDATE usuario set usuariolstlgn = now() where usuarioemail='%s';",$username);
         if(ejecutarNonQuery($strsql)){
            return 1;
        }
        return 0;
    }
?>