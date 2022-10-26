<?php

    require_once('./conexao.php');

    session_start();

    if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
        header("location: index.php");
        exit;
    }

    
        //Solicitar todos os usuários cadastrados:
        $sql = "SELECT * FROM cadastro";
        $result = $conn->query($sql);   
    

    

    




