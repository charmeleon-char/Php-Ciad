


 <div class="contenedor">
    <br><br>
    <h1>Citas</h1>
    <form action="index.php?page=citas" method="post">
        <label id="fecha">Fecha:</label>
    <input id="fech" name = "fecha" type="date"/>
    <br><br>
    
        <table class="form">
            <tr>
               <td>
                <label>Hora:</label>
                <select name="Hora" id="hora">
                 <option value = "9:00:00">9:00-10:00</option>
                 <option value = "10:00:00">10:00-11:00</option>
                 <option value = "11:00:00">11:00-12:00</option>
                 <option value = "12:00:00">12:00-1:00</option>
                 <option value = "13:00:00">1:00-2:00</option>
                 <option value = "14:00:00">2:00-3:00</option>
                 <option value = "15:00:00">3:00-4:00</option>
                 <option value = "16:00:00">4:00-5:00</option>
                </select>
                <br><br>
                <label>Especialidad:</label>
                <select name="Especialidad" onchange="submit()" id="Esp"  >
                 <option value="0">Seleccione una Opcion</option>
                 <option value = "1">Diabetólogo</option>
                 <option value = "2">Nutriólogo</option>
                 <option value = "3">Actividad Física para la salud</option>
                 <option value = "4">Cardiólogo</option>
                 <option value = "5">Podólogo</option>
                 <option value = "6">Biólogo Molecular</option>
                </select>
                <br>
                     <br>
                <label>Nombre Doctor:</label>
                <select name="empleado" id="especialidad">
                    {{foreach especialidades}}
                  <option value="{{idEmpleados}}">{{nombre}}</option>
                    {{endfor especialidades}}
                </select>
                <br><br>
                <label>No. de expediente:</label>
                <input type="text" name="txtExpediente" />
                <br><br>
                <label>Nombre paciente:</label>
                <input type="text" name="txtPacciente" />
                <br><br>
                 <input class="boton" type="submit" name="btnGuardar" value="Guardar" />
               
               </td>
            </tr>
        </table>
    </form>
 