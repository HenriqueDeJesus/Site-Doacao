<?php
#fazendo a chamada do metodo conexao
include_once "conexaoS.php";


$usuario = $_POST['nome'];
$descricao = $_POST['descricao'];
$tipo = $_POST['tipo'];
$polo = $_POST['polo'];
$endereco = $_POST['endereco'];

# string $sqlInsert de ação inserir registro do banco
$sqlInsert = "INSERT INTO produto(produtoname,descricao,tipo,polo,eProduct,status)
values('$usuario','$descricao','$tipo','$polo','$endereco','Disponivel')";

if(!mysqli_query($conn,$sqlInsert)){
    die("Erro ao inserir as informações do formulário na tabela tb_funcionarios: ". mysqli_error($conn));
}
# criando os botões no formulário
header('Location: sistema.php');
?>