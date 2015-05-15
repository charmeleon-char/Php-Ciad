<?php
require_once("./controllers/class.phpmailer.php");
require_once("./controllers/class.smtp.php");
$mail = new PHPMailer(); 
$mail->IsSMTP(); 
$mail->SMTPAuth = true; 
$mail->SMTPSecure = "ssl"; 
$mail->Host = "ssl://smtp.gmail.com"; 
$mail->Port = 465; 
$mail->Username = "rayelmejor1@gmail.com"; 
$mail->Password = "Royman1993192010";


$mail->From = "rayelmejor1@gmail.com"; 
$mail->FromName = "Nombre"; 
$mail->Subject = "Asunto del Email"; 
$mail->AltBody = "Este es un mensaje de prueba."; 
$mail->MsgHTML("<b>Este es un mensaje de prueba</b>."); 
$mail->AddAddress("alejandra199226@gmail.com", "Alejandra"); 
$mail->IsHTML(true); 
if(!$mail->Send()) { 
echo "Error: " . $mail->ErrorInfo; 
} else { 
echo "Mensaje enviado correctamente"; 
}



?>