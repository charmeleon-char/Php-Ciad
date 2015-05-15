<?php
function verificarPassword($password) {
    if (preg_match("/^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).*$/", $password))
    {
    return true;
    }
     else
    {
    echo "<script>alert('Contraseñas que contengan al menos una letra mayúscula.
                         Contraseñas que contengan al menos una letra minúscula.
                         Contraseñas que contengan al menos un número o caracter especial.
                         Contraseñas cuya longitud sea como mínimo 8 caracteres.');</script>";
                         return false; 
      }
}
function verificarUsuario($usuario,$pswd,$htmlData)
{
    if($usuario)
    {
         $salt = $usuario["usuariofching"];
          if ($salt %2==0 ){
            $pswd = $pswd . $salt;
          }else {
            $pswd = $salt . $pswd;
          }
           $pswd = md5($pswd);
        
        return $pswd;  
    }
    else{
            return false;
          }
       
}

function verificarContraseña($usuario,$pswd,$userName){
    if($usuario["usuariopwd"] == $pswd){
                 $_SESSION["usermail"]=$userName;
                  mw_setEstaLogueado($userName, true);
                  return true;
                }else{
                return false;
                }
         }
         
       //  
function verificarTipoUsuario($usuario,$userName)
{
                   if($usuario["tipo"]=="1")
                    {
                   header("Location:index.php?page=menudoctor");
                  if($usuario["tipo"]=="3")
                    {
                      header("Location:index.php?page=registro doctor");
                         
                     }
                   }
                    else{
                    header("Location:index.php?page=menuexpe");
                    }
                   
                    mw_setEstaLogueado($userName, true);  
                    actualizarFechaUsuario($usuario["usuarioemail"]);
                  header("Location:index.php" . $_POST["returnUrl"]);
                  die();
}

function verificarEspaciosEnBlanco($htmlData,$pswd,$pswdCnf)
{
          if($htmlData["txtUserName"] == "" ||  $htmlData["txtEmail"] == "" ||$pswd == "" ||  $pswdCnf == "" )
      {
       return false; 
       }
       else {
        return true;
       }
     

}
function confirmacionPassword($pswd , $pswdCnf)
{
       if($pswd == $pswdCnf){
       return true; 
       }
       else{
        return false;
       }
    
}
function existeUsuario($checkUser)
{  
     if(count($checkUser)==0){
        return false;
        }
        else
        {
            return true;
        }
}
?>