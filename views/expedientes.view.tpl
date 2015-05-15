
<head>
    <title>Expediente</title>
    <meta charset= "utf-8"/>
   
</head>
    <div class="contenedor">
    <br><br>
    <h1>Expediente</h1>
    <form action="index.php?page=expediente" method="post">
     <table class="form">
      <tr>
        <td>
            
        <label>No. de Identidad:</label>
        <input type="text" name="txtExp" />
        <br><br>
        
        <label>Nombre:</label>
        <input type="text" name="txtNomb" />
        <br><br>
        <label>Apellido:</label>
        <input type="text" name="txtApe" />
        <br><br>
        <label>Fecha de nacimiento:</label>
        <input type="text" name="txtDate"/>
        <br><br>
        <label>Dirección:</label>
        <input type="text" name="txtDirec" />
        <br><br>
        <label>Telefono:</label>
        <input type="text" name="txtTel" />
        <br><br>
        <label>Celular:</label>
        <input type="text" name="txtCel" />
        <br><br>
        <label>Persona responsable:</label>
            <input type="text" name="txtResp" />
            <br><br>
            
        <input class="boton" type="submit" name="btnGuardar" value="Guardar" />
        </td>
      </tr>
     </table>
    </form>
    <br>
    <form action="index.php?page=expediente" method="post">
      <table class="form2">
        <tr>
            <td>
            <label>Próxima cita:</label>
            <input type="text" name="txtCit" />
            <br><br>
            <label>Tipo de diábetes:</label>
            <input type="text" name="txtDiab" />
            <br><br>
            <label>Tratamiento:</label>
            <input type="text" name="txtTrat" />
            <br><br>
            <label>Doctor asignado:</label>
            <input type="text" name="txtDoct" />
            <br><br>
            <input class="boton" type="submit" name="btnGuardar2" value="Guardar" />
            </td>
        </tr>
      </table>
    </form>
    </div>
