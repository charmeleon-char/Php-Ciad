<?php
require_once("./controllers/class.phpmailer.php");
function correo($email,$body)
{
$correo = $email;    
$mensaje ="Inicio de session";
$mail = new PHPMailer();
$mail->IsSMTP();
$mail->SMTPAuth = true;
$mail->Host = "ssl://smtp.gmail.com"; // SMTP a utilizar. Por ej. smtp.elserver.com
$mail->Username = "rayelmejor1@gmail.com"; // Correo completo a utilizar
$mail->Password = "Royman1993192010"; // Contraseña
$mail->Port = 465; // Puerto a utilizar
$mail->From = "rayelmejor1@gmail.com"; // Desde donde enviamos (Para mostrar)
$mail->FromName = "CIAD";
$mail->AddAddress($correo); // Esta es la dirección a donde enviamos
$mail->AddCC($correo); // Copia
$mail->AddBCC($correo); // Copia oculta
$mail->IsHTML(true); // El correo se envía como HTML
$mail->Subject =  $mensaje; // Este es el titulo del email.
$mail->Body = $body; // Mensaje a enviar
$mail->AltBody = ""; 
$exito = $mail->Send(); // Envía el correo.

if($exito){
echo "El correo fue enviado correctamente.";
}else{
echo "Hubo un inconveniente. Contacta a un administrador.";

}
}

?>