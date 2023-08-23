<?php
include_once('conexaoP.php');

$usuario = $_POST['txt_usuario'];
$senha = $_POST['txt_senha'];

$sql_logar=mysqli_query($conn, "SELECT *FROM funcionario WHERE user_email='$usuario' and user_senha='$senha'" );

if(mysqli_num_rows($sql_logar)!=0){
    header('location:sistema.php');
}else{
    echo"<script>alert('Usuário Não Registrado');
    window.locatio.href='loginfun.php';
    </script>";
}
?>