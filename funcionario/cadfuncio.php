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
$cpf = addslashes($_POST['cpf']);
$telefone = addslashes($_POST['telefone']);
$email = addslashes($_POST['email']);
$senha = addslashes($_POST['password']);

$pdo->query("INSERT INTO funcionario SET user_name='$usuario', user_cpf='$cpf', user_telefone='$telefone', user_email='$email', user_senha='$senha'");

$id = $pdo->lastInsertId();
$md5 = md5($id);

$assunto = "Obrigado por se cadstrar";
$mensagem = "Doe amor, doe vida... 
Muito obrigado pelo seu cadastro";
$header = "From:Doação";

mail($email, $assunto, $mensagem, $header);
# criando os botões no formulário
header('Location: loginfun.html');
?>