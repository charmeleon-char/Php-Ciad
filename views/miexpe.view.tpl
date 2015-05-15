


<h1><a style="color:#800080; text-decoration: none;font-size:0.8em;"href="index.php?page=menuexpe">Regresar</a></h1>
<center>
    <h1><astyle="color: #778899; font-size:2.5em;  href="index.php?page=menuexpe">Mi Expediente</a></h1>
    
    
        <form action="index.php?page=miexpe" method="get" >
            <div class="decore" >
            <table action="index.php?page=micita"  style=" background-color:rgba(0, 0, 0, 0.65); border-radius:1em; padding:0.5em;  text-align:left; color: #6495ED; font-size: 1.5em;">
              {{foreach miexpe}}
                <tr>
                    <td >Nombre:</td>
                    <td > {{nombre}} </td>
                </tr>
                <tr>
                    <td>Apellido:</td>
                    <td> {{apellido}} </td>
                </tr>
                 <tr>
                    <td>Direccion:</td>
                    <td> {{direccion}} </td>
                </tr>
                {{endfor miexpe}}
                {{foreach miexpe1}}
                <tr>
                    <td>Edad:    </td>
                    <td>{{edad}}</td>
                </tr>
                 <tr>
                    <td>Diagnostico:</td>
                    <td> {{motivo}} </td>
                </tr>
                 {{endfor miexpe1}}
               
            </table>
        
            </div>
    </form>
</center>


<?php


?>
