<?php

include('conexao.php');

$usuario = $_POST['txt_usuario'];
$senha = $_POST['txt_senha'];

$sql_logar=mysqli_query($conn, "SELECT *FROM doacao WHERE email='$usuario'or cpf='$usuario' and user_senha='$senha'" );

if(mysqli_num_rows($sql_logar)!=0){
    header('location:telaacesso.html');
} 
else{
   header('Location: login.html');
}
?>
