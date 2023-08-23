<?php
$host = "mysql:dbname=id19494216_bancofuncionario;host=localhost";
$usuario = "id19494216_usuariofatec";
$pass = "Etec$1234567";

try {
    $pdo = new PDO($host, $usuario, $pass);
}catch (PDOExecption $e){
    echo "Falha: ". $e->getMessage();
}

$usuario = addslashes($_POST['user_nome']);
$sobrenome = addslashes($_POST['sobre']);
$cpf = addslashes($_POST['cpf']);
$rua = addslashes($_POST['rua']);
$numero = addslashes($_POST['numero']);
$bairro = addslashes($_POST['bairro']);
$estado = addslashes($_POST['user_estado']);
$cidade = addslashes($_POST['cidade']);
$cep = addslashes($_POST['cep']);
$email = addslashes($_POST['email']);
$idp = addslashes($_POST['idproduto']);
$produtoname = addslashes($_POST['produtoname']);
$descricao = addslashes($_POST['descricao']);
$tipo = addslashes($_POST['tipo']);
$polo = addslashes($_POST['polo']);
$eProduct = addslashes($_POST['eProduct']);


$pdo->query("INSERT INTO itemDoado SET user_nome='$usuario', sobre='$sobrenome', cpf='$cpf', 
rua='$rua', numero='$numero', bairro='$bairro', user_estado='$estado', cidade='$cidade', cep='$cep', 
email='$email', idproduto='$idp', produtoname='$produtoname', descricao='$descricao', tipo='$tipo', polo='$polo', eProduct='$eProduct'");


include_once "conexaoP.php";

$codigo = $_POST['idproduto'];

$sqlUpdate= "UPDATE produto SET status = 'Reservado' WHERE idproduto = '$codigo'";

if(!mysqli_query($conn, $sqlUpdate)){
    die('Erro ao atualizar o registro'.mysqli_error($conn));
}else{
    header('Location: https://heryherrnandes.000webhostapp.com/Doacao/sistemaL.php');
}
mysqli_close($conn);

?>