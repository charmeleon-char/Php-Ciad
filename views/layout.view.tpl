<!DOCTYPE html>
<html>
     <head>
    <meta charset="utf-8" />
     <script type="text/javascript" src="./public/js/jquery.min.js"></script>
         <script type="text/javascript" src="./public/js/bootstrap.min.js"></script> 
     <script type="text/javascript" src="./public/js/bootstrap.js"></script>
    <link href="./public/css/bootstrap.css" rel="stylesheet">

	<script src="./public/js/Script.js"></script>
        {{foreach globalestilos}}
            <link rel="stylesheet" href=" ./public/css/{{estilofile}}.css"/>
        {{endfor globalestilos}}
     <title>{{page_title}}</title>
    </head>
     <div class="container-fluid">
     <div class="row" class="container-fluid">
	  <div class="col-md-6">
	<div class="boxencabezado">
	    <div class="boximagenciad">
	    <img src="./public/img/ciad.png"/>
	    </div>
	    </div>
	  </div>
	<div class="col-md-6">
	    <div class="boxtitulo"> <p>Centro Integral de Atencion al Diabetico</p>
            </div>
	    </div>
       
        <br/>
        <br/>
	</div>
     </div>
      <!-- Static navbar -->
      <nav class="navbar navbar-inverse ">
        <div class="container-fluid" >
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <div id="navbar" class="navbar-collapse collapse" class="menu" >
         <ul class="nav navbar-nav pull-left">
	  <li><a href="index.php?page=home">INICIO </a></li>
	  <li class="nav-divider"></li>
	  <li><a href="index.php?page=login">INICIO DE SESION</a></li>
	  <li class="nav-divider"></li>
	  <li><a href="index.php?page=informacion">INFORMACION</a></li>
	  <li class="nav-divider"></li>     
          <li><a href="index.php?page=quienessomos">QUIENES SOMOS</a></li>
	  <li class="nav-divider"></li>
	  <li><a href="index.php?page=preguntas">PREGUNTAS FRECUENTES</a></li>
	  <li class="nav-divider"></li>
	  <li><a href="index.php?page=preguntas">CONTACTENOS</a></li>
	
	 </ul>
  
          </div><!--/.nav-collapse -->
  
      </nav>

 
    <body class="body">
     <div class="container">
     <br/>
    {{{page_content}}}
        <br/>
        <br/></div>	
	
	</body>
	

	    	  
</html>
<footer class="footer">
           <p>Centro Integral de Atencion al Diabetico Tel.2231-1567 Encuentranos Tambien en:</p>
		    <a href="https://www.facebook.com/pages/CIAD-HONDURAS-Centro-Integral-de-Atenci%C3%B3n-al-Diab%C3%A9tico/227440033944196">
		    <div class="boxfacebook"></div>
		    <a/>
		    <a href="https://twitter.com/DrCidBaez/lists/centro-integral-diabetes">
		    <div class="boxtwitter"></div>
		    <a/>
	  </footer>