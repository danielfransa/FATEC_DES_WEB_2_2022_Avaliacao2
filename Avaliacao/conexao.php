<?php


require_once('./dados_banco.php');

// Criar Conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Checar Conexão
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>