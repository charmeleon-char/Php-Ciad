

 <link rel="stylesheet" href="./public/css/estiloexpe.css"/> 

<h1><a style="color:#800080; text-decoration: none;font-size:0.8em;  " href="index.php?page=menuexpe">Regresar</a></h1>

<center>
       
        
<h1 style="color:#778899; font-size:2em;">Citas</h1>

    <h1 style="color: #778899; font-size:1.5em;"> Calendario CIAD</h1>

<table action="index.php?page=micita"  style=" background-color:rgba(255, 255, 255, 0.65); border-radius:1em; padding:0.5em;  text-align: center; border: 1em;color: #6495ED; font-size: 1.5em;">
    <tr>
        <th>Cita #</th>
        <th>Fecha</th>
        <th>Cambio</th>
    </tr>
    {{foreach micita}}
    <tr>
        <td>{{idCitas}}</td>
        <td>{{fecha}}</td>
        <td><a href="Cambio.view" style=" text-decoration: none; color:#5F9EA0;">Cancelar</a></td>
    </tr>
    {{endfor micita}}
</table>
</center>