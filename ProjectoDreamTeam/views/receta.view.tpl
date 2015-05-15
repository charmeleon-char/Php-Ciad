

<div class="rece">
    <form class="rece">
                <br><br>
                   </form>
    <h1>Recetas</h1>
    <center>
    <form action="index.php?page=receta" method="post">
     <table class="form">
      <tr>
        <td>
        <label>Paciente:</label><input type="text" name="txtIdpaciente" value="{{txtIdpaciente}}" />
        <br><br>
        <label>Expediente</label><input type="text" name="txtIdexpediente" value="{{txtIdexpediente}}" /> 
        <br><br>
        <label>Receta:</label><textArea name="receta" rows="6" cols="50" ></textArea>
        <br><br>
        <input type="submit" name="btnGuardar" value="Guardar" />
        </td>
      </tr>
     </table>
    </form>
    </center>
</div>