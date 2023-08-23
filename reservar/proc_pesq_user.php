<?php

include_once './conexao.php';

$cpf = filter_input(INPUT_GET, 'cpf', FILTER_SANITIZE_STRING);
if(!empty($cpf)){
    
    $limit = 1;
    $result_aluno = "SELECT * FROM doacao WHERE cpf =:cpf LIMIT :limit";
    
    $resultado_aluno = $conn->prepare($result_aluno);
    $resultado_aluno->bindParam(':cpf', $cpf, PDO::PARAM_STR);
    $resultado_aluno->bindParam(':limit', $limit, PDO::PARAM_INT);
    $resultado_aluno->execute();
    
    $array_valores = array();
    
    if($resultado_aluno->rowCount() != 0){
        $row_aluno = $resultado_aluno->fetch(PDO::FETCH_ASSOC);
        $array_valores['user_nome'] = $row_aluno['user_nome']; 
        $array_valores['sobre'] = $row_aluno['sobre']; 
        $array_valores['rua'] = $row_aluno['rua']; 
        $array_valores['numero'] = $row_aluno['numero']; 
        $array_valores['bairro'] = $row_aluno['bairro']; 
        $array_valores['user_estado'] = $row_aluno['user_estado']; 
        $array_valores['cidade'] = $row_aluno['cidade']; 
        $array_valores['cep'] = $row_aluno['cep']; 
        $array_valores['email'] = $row_aluno['email']; 
    }else{
        $array_valores['user_nome'] = 'Pessoa não cadastrada';        
    }
    echo json_encode($array_valores);
}