<?php

?>

<head>
    <title>Registro Doctor</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="estiloLoginRegistro.css"/> 
</head>
 
<div class="box"></div>
     <form action="index.php?page=registro doctor" method="post">
        <table class="form3">
         <tr>
          <td>
            <h1 id="tit">Registro</h1>
            <label>Nombre:</label><br><input type="text" name="txtUserName" placeholder="Ingresa Usuario" autofocus="" required=""/>
            <br>
            <label>Apellido:</label><br><input type="text" name="txtApellido" placeholder="Ingresa Apellido" autofocus="" required=""/>
            <br>
                <br><br>
                <label>Especialidad:</label><br>
                <select name="Especialidad" id="Esp">
                 <option>Diabetólogo</option>
                 <option>Nutriólogo</option>
                 <option>Actividad Física para la salud</option>
                 <option>Cardiólogo</option>
                 <option>Podólogo</option>
                 <option>Biólogo Molecular</option>
                </select>
                <br><br>
            <label>Correo Electrónico:</label><br><input type="email" name="txtEmail" placeholder="Ingresa Email" required=""/>
            <br>
            <label>Contraseña:</label><br><input type="password" name="txtPswd" placeholder="Ingresa Contraseña" required=""/>
            <br>
            <label>Confirme Contraseña:</label><br><input type="password" name="txtPswdCnf" placeholder="Ingresa Confirmación" required=""/>
            <br>
            <input class="botoncito" type="submit" name="btnRegister" value="Regístrate" style="padding-left: 0px; width: 100px; margin-left: 85px;" />
            </td>
          </tr>
        </table>
      </form>