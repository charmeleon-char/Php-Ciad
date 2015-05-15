   <div>{{if mostrarErrores}}
     <ul class="error">
        {{foreach errores}}
        <li>{{errmsg}}</li>
    {{endfor errores}}
   </ul>
</div>
{{endif mostrarErrores}}

<head>
    <title>Login y Registro</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="estiloLoginRegistro.css"/>
     <link rel="stylesheet" href="./public/css/bootstrap.min.css">

</head>
 
  
  <div class="box"></div>
    <div id="envoltura">
        <div id="contenedor">
            <div id="cabecera" >
                Login
            </div>
                <div id="cuerpo">
                    <form id="form-login" action="" method="post" autocomplete="off">
                    <p><label>Usuario:</label></p>
                        <input name="usuario" type="text" id="usuario" placeholder="Ingresa Usuario" autofocus="" required=""></p>
                        <br>
                    <p><label>Contraseña:</label></p>
                        <input name="contrasenia" type="password" id="contrasenia" placeholder="Ingresa Password" required=""></p>
                        <br>
                    <p id="bot"><input type="submit" id="submit" name="submit" value="Ingresar" class="boton"></p>
                    </form>
                </div>
                    <div id="pie"></div>
        </div>
    </div>
    
     <form action="" method="post">
        <table class="form">
         <tr>
          <td>
            <h1 id="tit">Registro</h1>
            <label>Nombre Completo:</label><br><input type="text" name="txtUserName" placeholder="Ingresa Usuario" autofocus="" required=""/>
            <br>
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

