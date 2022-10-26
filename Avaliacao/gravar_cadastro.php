<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gravar_Cadastro</title>
</head>
<body>
<?php

require_once('./conexao.php');

    session_start();

    if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
        header("location: index.php");
        exit;
    }


    
    $nome = ($_POST['name']);
    $sobrenome = ($_POST['sobrenome']);
    $curso = ($_POST['curso'] );
    $cpf = ($_POST['cpf'] );

    $sql = "INSERT INTO cadastro (id, nome, sobrenome, curso, cpf)
    VALUES (null, '$nome', '$sobrenome', '$curso', '$cpf' )";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
   
    header("location: cadastro.php");

?>
</body>
</html>