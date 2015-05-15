    <meta charset="utf-8">    
    <br/>
  <br/>
  <br/>
    <title>Formulario de contacto con PHP + HTML y SMTP de Google</title>
    <!-- Bootstrap core CSS -->
    <link href="./public/js/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="./public/js/jumbotron.css" rel="stylesheet">
  </head>
  <body> 
  <div class="container">
   <h1 class="formuh1">Contacto rápido.</h1>
    <form id="form1" class="well col-lg-12" action="index.php?page=enviar" method="post" name="form1">
      <div class="row">
       <div class="col-lg-6">

        <label>Nombre*</label> <input id="Nombre" class="form-control" type="text" name="Nombre" /> 
        <label>Email*</label> <input id="Email" class="form-control" type="email" name="Email" />
        
       </div>
        <div class="col-lg-6"><label>Mensaje*</label> 
         <textarea id="Mensaje" class="form-control" name="Mensaje" rows="4"></textarea>
        </div>
        <button class="btn btn-default pull-right" type="submit" name="enviar">Enviar</button>
      </div>
    </form>
  </div>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  <br/>
  
    <!-- javascript para confirmar datos del formulario.
    ================================================== -->
    <!-- La página carga más rapido si estan situados al final del documento. -->
    <script src="./public/js/jquery.js"></script>
    <script src="./public/js/bootstrap.min.js"></script>