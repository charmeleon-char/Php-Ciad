<?php
    $global_context = array();
    
    function addToContext($key,$value){
        global $global_context;
        $global_context[$key] = $value;
    }
    
    function getFromContext($key){
        global $global_context;
        if(isset($global_context[$key])){
            return $global_context[$key];    
        }else{
            return null;
        }
    }
    
    
?>