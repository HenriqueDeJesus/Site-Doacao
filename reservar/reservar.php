<?php
session_start();
include_once("conexaoS.php");
$id = filter_input(INPUT_GET, 'idproduto', FILTER_SANITIZE_NUMBER_INT);
$sqlSelect = "SELECT * FROM produto WHERE idproduto = '$id'";
$mysqli_result = mysqli_query($conn, $sqlSelect) or die("Erro ao retornar dados");
$registro = mysqli_fetch_assoc($mysqli_result);
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/cadastro.css" media="screen">
    <title>Document</title>
   
   
</head>
<body>
     <form class="form" method="post" action="cadastro.php">
    <!-- Início do formulário -->
    
        <div class="card" >
            <div class="card-top">
                <img class="imglogin" src=LogoD.png alt="">
                <figcaption>DoAção</figcaption>
                <h2 class="title">Reservar Produto</h2>
            </div>
            <!-- Campo do cpf com css de class "campo" -->
        <div class="campo">
            <label for="cpf"><strong>CPF</strong></label>
            <input type="text" class="cpf" name="cpf" size="14" maxlength="14" placeholder="Ex.: xxx.xxx.xxx-xx" required>
        </div>
            <!-- Campo do nome e css de classe "campo" -->
            <div class="campo">
                <label><strong>Dados Pessoais</strong></label>
                <label for="nome"><strong>Nome</strong></label>
                <input type="text" class="nome" name="user_nome" id="nome" required>
            </div>

            <!-- Campo do sobrenome e css de classe "campo" -->
            <div class="campo" id="content">
                <label for="sobrenome"><strong>Sobrenome</strong></label>
                <input type="text" class="sobrenome" name="sobre" id="sobrenome" required>
            </div>
        
        <!-- Campo de Rua com css de classe "campo" -->
        <div class="campo">
            <label><strong>Dados de Endereço</strong></label>
            <label for="rua"><strong>Rua: </strong></label>
            <input type="text" class="rua" name="rua" required>
        </div>
        <!-- Campo de Numero com css de classe "campo" -->
        <div class="campo">
            <label for="numero"><strong>Numero: </strong></label>
            <input type="text" class="numero" name="numero" size="4" required>
        </div>
        <!-- Campo de Bairro com css de classe "campo" -->
        <div class="campo">
            <label for="bairro"><strong>Bairro: </strong> </label>
            <input type="text" class="bairro" name="bairro" required>
        </div>
        <!-- Campo de estado com css de classe "campo" -->
         <div class="campo">
            <label for="user_estado"><strong>Estado: </strong> </label>
            <input type="text" class="user_estado" name="user_estado" required>
        </div>
        <!-- Campo de cidade com css de classe "campo" -->
        <div class="campo">
            <label for="cidade"><strong>Cidade: </strong></label>
            <input type="text" class="cidade" name="cidade" required>
        </div>
        <!-- Campo de CEP com css de classe "campo" -->
        <div class="campo">
            <label for="cep"><strong>CEP: </strong></label>
            <input type="text" class="cep" name="cep" size="8" maxlength="8" placeholder="Ex.: xxxxx-xx" required> 
        </div>
        <!-- Campo de Email com css de classe "campo" -->
        <div class="campo">
            <label><strong>Dados de login</strong></label>
            <label for="email"><strong>Email</strong></label>
            <input type="email" class="email" name="email" id="email" required>
        </div>
        <!-- Campo de senha com css de classe "campo" -->
        <!--Polo produto-->
        <div class="campo">
            <label for="produtoname"><strong>Código do produto: </strong></label>
            <input type="idproduto" class="idproduto" name="idproduto" value="<?php echo $registro['idproduto']; ?>" required>
        </div>

        <div class="campo">
            <label for="produtoname"><strong>Nome do produto: </strong></label>
            <input type="produtoname" class="produtoname" name="produtoname" value="<?php echo $registro['produtoname']; ?>" required>
        </div>

        <div class="campo">
            <label for="descricao"><strong>Descriçao: </strong></label>
            <input type="descricao" class="descricao" name="descricao" value="<?php echo $registro['descricao']; ?>"required>
        </div>

        <div class="campo">
            <label for="tipo"><strong>Tipo: </strong></label>
            <input type="tipo" class="tipo" name="tipo" value="<?php echo $registro['tipo']; ?>" required>
        </div>

        <div class="campo">
            <label for="polo"><strong>Polo: </strong></label>
            <input type="polo" class="polo" name="polo" value="<?php echo $registro['polo']; ?>"required>
        </div>

        <div class="campo">
            <label for="eProduct"><strong>Endereço do Produto: </strong></label>
            <input type="eProduct" class="eProduct" name="eProduct" value="<?php echo $registro['eProduct']; ?>"required>
        </div>

        <div class="campo btn">
        <button type="submit" id="generate-pdf">Reservar</button> 
        <a href="https://heryherrnandes.000webhostapp.com/Doacao/sistemaL.php" class="retornar">Cancelar</a>   
        </div>
    </div>
     </form>           
    
    <script>
function myFunction() {
  alert("Item reservado com sucesso");
}
</script>
 
     <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script type="text/javascript" src="js/scriptsEmpr.js" defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/personalizado.js"></script>
    <script type="text/javascript" src="js/personalizadoItem.js"></script>
</body>
</html>