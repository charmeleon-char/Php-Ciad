<?php
//middleware de configuración de todo el sitio

function site_init(){
    addToContext("page_title","CIAD");
    addToContext("globalestilos",array());
}

function site_addStyle( $styleFile){
    $estilos = getFromContext("globalestilos");
    if(!$estilos){
        $estilos = array();
    }
    $estilos[] = array("estilofile"=>$styleFile);
    addToContext("globalestilos", $estilos);
}
    
site_init();
?>