<?php 
include_once "conexao.php";

$codigo = $_POST['id'];
$usuario = $_POST['nome'];
$descricao = $_POST['descricao'];
$tipo = $_POST['tipo'];
$polo = $_POST['polo'];
$endereco = $_POST['endereco'];

$sqlUpdate= "UPDATE produto SET user_name = '$usuario', user_descricao = '$descricao', user_tipo = '$tipo', 
user_polo = '$polo', user_endereco = '$endereco' WHERE user_id = '$codigo'";

if(!mysqli_query($conn, $sqlUpdate)){
    die('Erro ao atualizar o registro'.mysqli_error($conn));
}else{
    header('Location: sistema.php');
}
mysqli_close($conn);

?>