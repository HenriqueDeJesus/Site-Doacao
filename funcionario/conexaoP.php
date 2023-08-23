<?php
$servidor = "localhost"; # 127.0.0.1 caminho ip DNS Domain name server
$banco = "id19494216_bancofuncionario";
$usuario = "id19494216_usuariofatec";
$senha = "Etec$1234567";
$porta = "3306";

#valores fixos

#versões anteriores a 5.6 do php usam a biblioteca mysql_connect versões 7 usam a biblioteca
# php 5.6 programação estruturada, php acima de 5.6 programação orientada a objetos 

// String de conexão com banco de dados 
$conn = mysqli_connect($servidor, $usuario, $senha, $banco, $porta);
//Checando a conexão foi bem sucedida com
if(!$conn){
    die("A conexão falhou" . mysqli_connect_error());
}

?>