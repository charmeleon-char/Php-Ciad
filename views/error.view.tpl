
<?php
   $server = "127.0.0.1";
   $user = "root";
   $pswd = "";
   $database = "ciadfinal";
   $port = "3306";
$conexion = @new mysqli($server, $username, $password, $database);
 
if ($conexion->connect_error) //verificamos si hubo un error al conectar, recuerden que pusimos el @ para evitarlo
{
    die('Error de conexión: ' . $conexion->connect_error); //si hay un error termina la aplicación y mostramos el error
}
 
$sql="SELECT * from empleados";
$result = $conexion->query($sql); //usamos la conexion para dar un resultado a la variable
 
if ($result->num_rows > 0) //si la variable tiene al menos 1 fila entonces seguimos con el codigo
{
    $combobit="";
    while ($row = $result->fetch_array(MYSQLI_ASSOC)) 
    {
        $combobit .=" <option value='".$row['empleadoid']."'>".$row['nombre']."</option>"; //concatenamos el los options para luego ser insertado en el HTML
    }
}
else
{
    echo "No hubo resultados";
}
$conexion->close(); //cerramos la conexión
?>
<html>
<head>
<title>Llenar un Combobox/Select con registros de una Tabla</title>
<link href="contactos.css" rel="stylesheet" type="text/css" />
</head>
<body>
   <select name="estado">
       <?php echo $combobit; ?>
   </select>
</body>
</html>