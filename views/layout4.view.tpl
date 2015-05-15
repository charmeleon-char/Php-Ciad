<!DOCTYPE html>
<html>
     <head>
    <meta charset="utf-8" />
     <script type="text/javascript" src="./public/js/jquery.min.js"></script>
        <script src="./public/js/Script.js"></script>
        {{foreach globalestilos}}
            <link rel="stylesheet" href=" ./public/css/{{estilofile}}.css"/>
        {{endfor globalestilos}}
     <title>{{page_title}}</title>
      </head>
     
     <div class="menu">
    <ul><li><a href="index.php?page=home">INICIO</a></li><li><a href="index.php?page=login">INICIO DE SESION</a></li><li><a href="index.php?page=informacion">INFORMACION</a></li><li><a href="index.php?page=quienessomos">QUIENES SOMOS</a></li><li><a href="index.php?page=enviar">ENVIAR CONSULTA</a></li><li><a href="index.php?page=preguntas">PREGUNTAS FRECUENTES</a></li></ul>
    </div>
    <body class="body">
            {{{page_content}}}
    </body>
    	 <div class="barrafinal">
	    <p>Centro Integral de Atencion al Diabetico Tel.2231-1567 Encuentranos Tambien en:</p>
	            <div>
		    <a href="https://www.facebook.com/pages/CIAD-HONDURAS-Centro-Integral-de-Atenci%C3%B3n-al-Diab%C3%A9tico/227440033944196">
		    <div class="boxfacebook"></div>
		    <a/>
		    <a href="https://twitter.com/DrCidBaez/lists/centro-integral-diabetes">
		    <div class="boxtwitter"></div>
		    <a/>
	 </div>    
</html>