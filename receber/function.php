<?php
include_once("conexao.php");

function retorna($user_cpf, $conn){
	$result_aluno = "SELECT * FROM doacao WHERE user_cpf = '$user_cpf' LIMIT 1";
	$resultado_aluno = mysqli_query($conn, $result_aluno);
	if($resultado_aluno->num_rows){
		$row_aluno = mysqli_fetch_assoc($resultado_aluno);
		$valores['user_nome'] = $row_aluno['user_nome'];
		$valores['user_sobre'] = $row_aluno['user_sobre'];
	}else{
		$valores['user_nome'] = 'Aluno não encontrado';
	}
	return json_encode($valores);
}

if(isset($_GET['doacao'])){
	echo retorna($_GET['doacao'], $conn);
}
?>