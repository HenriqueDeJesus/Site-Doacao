<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOME</title>
</head>
<body>

    <center><H1>PRODUTOS</H1></center>

<?php
include_once "conexao.php";
date_default_timezone_set('America/Sao_Paulo');
 // Criando tabela e cabeçalho de dados:
 echo "<meta charset='UTF-8'>";
 echo "<center><table border=1>";
 echo "<tr>";
 echo "<th>CODIGO</th>";
 echo "<th>NOME</th>";
 echo "<th>DESCRIÇÃO</th>";
 echo "<th>TIPO</th>";
 echo "<th>POLO</th>";
 echo "<th>ENDEREÇO</th>";
 
 //echo "<th>AÇÃO</th>";
 echo "</tr>"; 
 echo "</center>";
  
 $sqlSelect = "SELECT * FROM produto";
 $resultado = mysqli_query($conn,$sqlSelect) or die("Erro ao retornar dados");
 
 // MOSTRA A MENSAGEM DE SUCESSO    
echo "</br>";
 
 // Extraindo os dados armazenado na base de dados por meio de um loop while
 while ($registro = mysqli_fetch_array($resultado))
 {
    $id = $registro['idproduto'];
    $nome = $registro['produtoname'];
    $descicao = $registro['descricao'];
    $tipo = $registro['tipo'];
    $polo = $registro['polo'];
    $endereco = $registro['eProduct'];

    echo "<tr>";
    echo "<td>".$id."</td>";
    echo "<td>".$nome."</td>";  
    echo "<td>".$descicao."</td>";
    echo "<td>".$tipo."</td>";
    echo "<td>".$polo."</td>";
    echo "<td>".$endereco."</td>";
    echo "</tr>";
 
 }
 echo "</table>";
 echo "</br>";
 mysqli_close($conn);
 
 echo "<form method='post'>";
            echo 
           "<button type='submit' formaction='index.php'>Sair</button>
           <button type='submit' formaction='deletar.php'>Deletar Funcionário</button>
           <button type='submit' formaction='atualizarone.php'>Atualizar Funcionário</button>   
           <button type='submit' formaction='cadastramento.php'>Cadastrar Produto</button>            
           </form>
    <br/>";
 
?>
    
</body>
</html>