<div>{{if mostrarErrores}}
<ul class="error">
    {{foreach errores}}
        <li>{{errmsg}}</li>
    {{endfor errores}}
</ul>
</div>
{{endif mostrarErrores}}

     <div id="registrar">
    </div>
      <form action="index.php?page=registrarTratamiento" method="post">
        <table class="form">
         <tr>
          <td>
            <h1>Registrar Tratamiento</h1>
            <label>descripcion</label><br>  <textarea name="txtdescripcion" rows="3" cols="32"></textarea> 
            <br>
            <label>Medicamento</label><br><input type="textarea" name="txtmedicamento"/>
            <br>
            <label>idexpediente</label><input type="text" name="txtidexpediente"/>
            <br>
            <label>idpacientes</label><input type="text" name="txtidpacientes"/>
            <br>
         
            <input class="boton" type="submit" name="btnGuardar" value="Insertar" style="padding-left: 0px; width: 100px; margin-left: 80px;" />
            </td>
          </tr>
        </table>
      </form>
      