<?php

include_once './conexao.php';

$idproduto = filter_input(INPUT_GET, 'idproduto', FILTER_SANITIZE_STRING);
if(!empty($idproduto)){
    
    $limit = 1;
    $result_aluno = "SELECT * FROM produto WHERE idproduto =:idproduto LIMIT :limit";
    
    $resultado_aluno = $conn->prepare($result_aluno);
    $resultado_aluno->bindParam(':idproduto', $idproduto, PDO::PARAM_STR);
    $resultado_aluno->bindParam(':limit', $limit, PDO::PARAM_INT);
    $resultado_aluno->execute();
    
    $array_valores = array();
    
    if($resultado_aluno->rowCount() != 0){
        $row_aluno = $resultado_aluno->fetch(PDO::FETCH_ASSOC);
        $array_valores['produtoname'] = $row_aluno['produtoname']; 
        $array_valores['descricao'] = $row_aluno['descricao']; 
        $array_valores['tipo'] = $row_aluno['tipo']; 
        $array_valores['polo'] = $row_aluno['polo']; 
        $array_valores['eProduct'] = $row_aluno['eProduct']; 
    }else{
        $array_valores['produtoname'] = 'Produto não encontrado';        
    }
    echo json_encode($array_valores);
}