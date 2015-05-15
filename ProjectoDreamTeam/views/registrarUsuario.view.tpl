     <link rel="stylesheet" href="./public/css/registro.css"/>
        <link rel="stylesheet" href="./public/css/estilologin.css"/>
        <link rel="stylesheet" href="public/css/error.css" />
<div>{{if mostrarErrores}}
<ul class="error">
    {{foreach errores}}
        <li>{{errmsg}}</li>
    {{endfor errores}}
</ul>
</div>
{{endif mostrarErrores}}
     <div id="registrar">
   <a href="../index.php"</a>Regresar</a>
    </div>
      <form action="index.php?page=registrarUsuario" method="post">
        <table class="form">
         <tr>
          <td>
            <h1>Registro</h1>
            <label>Nombre Completo</label><input type="text" name="txtUserName" autofocus=""/>
            <br>
            <label>Correo Electrónico</label><br><input type="email" name="txtEmail"/>
            <br>
            <label>Contraseña</label><br><input type="password" name="txtPswd"/>
            <br>
            <label>Confirme Contraseña</label><br><input type="password" name="txtPswdCnf"/>
            <br>
            <input class="boton" type="submit" name="btnRegister" value="Regístrate" style="padding-left: 0px; width: 100px; margin-left: 80px;" />
            </td>
          </tr>
        </table>
      </form>