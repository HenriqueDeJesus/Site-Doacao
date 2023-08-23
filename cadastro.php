<?php
$host = "mysql:dbname=id19494216_bancofuncionario;host=localhost";
$usuario = "id19494216_usuariofatec";
$pass = "Etec$1234567";

try {
    $pdo = new PDO($host, $usuario, $pass);
}catch (PDOExecption $e){
    echo "Falha: ". $e->getMessage();
}

$usuario = addslashes($_POST['nome']);
$sobrenome = addslashes($_POST['sobrenome']);
$cpf = addslashes($_POST['cpf']);
$rua = addslashes($_POST['rua']);
$numero = addslashes($_POST['numero']);
$bairro = addslashes($_POST['bairro']);
$estado = addslashes($_POST['user_estado']);
$cidade = addslashes($_POST['cidade']);
$cep = addslashes($_POST['cep']);
$email = addslashes($_POST['email']);
$senha = addslashes($_POST['pass']);

$pdo->query("INSERT INTO doacao SET user_nome='$usuario', sobre='$sobrenome', cpf='$cpf', 
rua='$rua', numero='$numero', bairro='$bairro', user_estado='$estado', cidade='$cidade', cep='$cep', 
email='$email', user_senha='$senha'");

$id = $pdo->lastInsertId();
$md5 = md5($id);

$assunto = "Obrigado por se cadstrar";
$mensagem = "Doe amor, doe vida... 
Muito obrigado pelo seu cadastro";
$header = "From:Doação";

mail($email, $assunto, $mensagem, $header);
# criando os botões no formulário
header('Location: login.html');
?>