<?php
session_start();
  
    require_once("libs/utilities.php");
   
    $pageRequest = "home";
    
    if(isset($_GET["page"])){
        $pageRequest = $_GET["page"];
    }
    //midlewares son los que se necesitan de forma global
    require_once("controllers/site.mw.php");
      require_once("controllers/verificar.mw.php");
      require_once("controllers/expresionesregulares.control.php");
    
    switch($pageRequest){
        case "home":
            //llamar al controlador
            require_once("controllers/home.control.php");
            break;
        case "login":
            require_once("controllers/login.control.php");
            break;
        case "expediente":
            require_once("controllers/expediente.control.php");
            break;
        case "registrarUsuario":
            require_once("controllers/registrarUsuario.control.php");
            break;
         case "enviarcorreo":
            require_once("controllers/enviarcorreo.control.php");
            break;
        case "registrarTratamiento":
            require_once("controllers/tratamiento.control.php");
            break;
        case "alimentacion":
            require_once("controllers/alimentacion.control.php");
            break;
        case "doctores":
            require_once("controllers/doctores.control.php");
            break;
         case "informacion":
            require_once("controllers/informacion.control.php");
            break;
        case "quienessomos":
            require_once("controllers/quienessomos.control.php");
            break;
        case "laser":
            require_once("controllers/laser.control.php");
            break;
        case "preguntas":
            require_once("controllers/preguntas.control.php");
            break;
        
        case "correr":
            require_once("controllers/correr.control.php");
            break;
               
        case "maquina":
            require_once("controllers/maquina.control.php");
            break;
        
        case "azucar":
            require_once("controllers/azucar.control.php");
            break;
        
        case "enviar":
            require_once("controllers/enviar.control.php");
            break;
        default:
            require_once("controllers/error.control.php");
                    
        case "correo":
            require_once("controllers/correoenvio.control.php");
            break;
                      
        case "menudoctor":
            require_once("controllers/menudoctor.control.php");
            break;
                       
        case "receta":
            require_once("controllers/receta.control.php");
            break;
                      
        case "resumenClinico":
            require_once("controllers/resumenClinico.control.php");
            break;
        case "registro doctor":
            require_once("controllers/registro doctor.control.php");
            break;
        
        case "cerrarsession":
            require_once("controllers/cerrarsession.control.php");
            break;
        case "citas":
            require_once("controllers/citas.control.php");
            break;
        case "miexpe":
            require_once("controllers/miexpe.control.php");
            break;
        
        case "micita":
            require_once("controllers/micita.control.php");
            break;
        
        case "menuexpe":
            require_once("controllers/menuexpe.control.php");
            break;
    }
    
?>