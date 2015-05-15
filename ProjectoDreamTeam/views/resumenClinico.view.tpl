
    <div class="contenedor">
        <br><br>
        <h1>Resumen Clinico</h1>
        <form action="action="index.php?page=resumenClinico" method="post">
            <table class="form">
                <tr>
                <td>
                    <label>No. de expediente:</label>
                    <input type="text" name="txtExp"/>
                    <br><br>
                    <label>Nombre paciente:</label>
                    <input type="text" name="txtPac"/>
                    <br><br>
                    <div class="datos">
                        <label>Edad:</label>
                        <input type="text" name="txtPeso"/><br><br>
                        <label>Altura en mtrs:</label>
                        <input type="text" name="txtAlt"/><br><br>
                        <label>Temperatura:</label>
                        <input type="text" name="txtTemp"/><br><br>
                        <label>Presion arterial:</label>
                        <input type="text" name="txtPre"/><br><br>
                        <label>Glucosa:</label>
                        <input type="text" name="txtGluc"/><br><br>
                        <label>Tratamiento:</label>
                        <input type="text" name="txtTrat" />
                        <br><br>
                        <label>Motivo:</label>
                        <input type="text" name="txtMot" />
                    </div>
                 <input class="boton" type="submit" name="btnGuardar" value="Guardar"/>
                </td>
                </tr>
            </table>
        </form>
    </div>
 