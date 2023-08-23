<?php
$host = "mysql:dbname=id19494216_bancofuncionario;host=localhost";
$usuario = "id19494216_usuariofatec";
$pass = "Etec$1234567";

try {
    $pdo = new PDO($host, $usuario, $pass);
}catch (PDOExecption $e){
    echo "Falha: ". $e->getMessage();
}

$h=$_GET['h'];

if(!empty($h)){
    $pdo->query("UPDATE itemDoado SET status='1' WHERE status = '$h'");
    echo "Parabens";
}

?>