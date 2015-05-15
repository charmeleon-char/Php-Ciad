 <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title" id="myModalLabel">Modal Heading</h4>
        </div>
        <div class="modal-body">
          <h4>Text in a modal</h4>
          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>

          <h4>Popover in a modal</h4>
          <p>This <a href="#" role="button" class="btn btn-default js-popover" title="" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title">button</a> should trigger a popover on click.</p>

          <h4>Tooltips in a modal</h4>
          <p><a href="#" class="js-tooltip" title="" data-original-title="Tooltip">This link</a> and <a href="#" class="js-tooltip" title="" data-original-title="Tooltip">that link</a> should have tooltips on hover.</p>

          <hr>

          <h4>Overflowing text to show scroll behavior</h4>
          <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
          <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
          <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
          <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
          <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
          <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>

      </div>
    </div>
  </div>

  <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
    Launch demo modal
  </button>

</div>

<!-- JavaScript Includes -->
<script src="./public/js/jquery.min.js"></script>

<script src="./public/js/modal.js"></script>
  
  
  
  
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