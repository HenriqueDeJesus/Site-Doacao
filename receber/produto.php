<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script src="./script.js" defer></script>
    <link rel="stylesheet" type="text/css" href="assets/cadastro.css" media="screen">
    <title>Document</title>
</head>
<body>

    <script type='text/javascript'>
        $(document).ready(function(){
            $("input[name='user_cpf']").blur(function(){
                var $nome = $("input[name='user_nome']");
                var $sobrenome = $("input[name='s']");
                $.getJSON('function.php',{ 
                    user_cpf: $( this ).val() 
                },function( json ){
                    $nome.val( json.nome );
                    $sobrenome.val( json.sobrenome );
                });
            });
        });
    </script>

    <!-- Início do formulário -->
    <form class="form" action="">

        <div class="card">
            <div class="card-top">
                <img class="imglogin" src=LogoD.png alt="">
                <figcaption>DoAção</figcaption>
                <h2 class="title">Cadastro</h2>
            </div>
            <!-- Campo do cpf com css de class "campo" -->
        <div class="campo">
            <label for="cpf"><strong>CPF</strong></label>
            <input type="text" class="cpf" name="user_cpf" size="14" maxlength="14" placeholder="Ex.: xxx.xxx.xxx-xx" required>
        </div>
            <!-- Campo do nome e css de classe "campo" -->
            <div class="campo">
                <label><strong>Dados Pessoais</strong></label>
                <label for="nome"><strong>Nome</strong></label>
                <input type="text" class="nome" name="user_nome" id="nome" required>
            </div>

            <!-- Campo do sobrenome e css de classe "campo" -->
            <div class="campo">
                <label for="sobrenome"><strong>Sobrenome</strong></label>
                <input type="text" class="sobrenome" name="user_sobre" id="sobrenome" required>
            </div>
        
        <!-- Campo de Rua com css de classe "campo" -->
        <div class="campo">
            <label><strong>Dados de Endereço</strong></label>
            <label for="rua"><strong>Rua: </strong></label>
            <input type="text" class="rua" name="user_rua" required>
        </div>
        <!-- Campo de Numero com css de classe "campo" -->
        <div class="campo">
            <label for="numero"><strong>Numero: </strong></label>
            <input type="text" class="numero" name="user_numero" size="4" required>
        </div>
        <!-- Campo de Bairro com css de classe "campo" -->
        <div class="campo">
            <label for="bairro"><strong>Bairro: </strong> </label>
            <input type="text" class="bairro" name="user_bairro" required>
        </div>
        <!-- Campo de estado com css de classe "campo" -->
        <div class="campo">
            <label for="estado" name="user_estado"><strong>Estado</strong></label>
            <select id="estado" required>
              <option selected disabled value="">Selecione</option>
              <option value="ac" class="estado" >Acre</option> 
              <option value="al" class="estado">Alagoas</option> 
              <option value="am" class="estado">Amazonas</option> 
              <option value="ap" class="estado">Amapá</option> 
              <option value="ba" class="estado">Bahia</option> 
              <option value="ce" class="estado">Ceará</option> 
              <option value="df" class="estado">Distrito Federal</option> 
              <option value="es" class="estado">Espírito Santo</option> 
              <option value="go" class="estado">Goiás</option> 
              <option value="ma" class="estado">Maranhão</option> 
              <option value="mt" class="estado">Mato Grosso</option> 
              <option value="ms" class="estado">Mato Grosso do Sul</option> 
              <option value="mg" class="estado">Minas Gerais</option> 
              <option value="pa" class="estado">Pará</option> 
              <option value="pb" class="estado">Paraíba</option> 
              <option value="pr" class="estado">Paraná</option> 
              <option value="pe" class="estado">Pernambuco</option> 
              <option value="pi" class="estado">Piauí</option> 
              <option value="rj" class="estado">Rio de Janeiro</option> 
              <option value="rn" class="estado">Rio Grande do Norte</option> 
              <option value="ro" class="estado">Rondônia</option> 
              <option value="rs" class="estado">Rio Grande do Sul</option> 
              <option value="rr" class="estado">Roraima</option> 
              <option value="sc" class="estado">Santa Catarina</option> 
              <option value="se" class="estado">Sergipe</option> 
              <option value="sp" class="estado">São Paulo</option> 
              <option value="to" class="estado">Tocantins</option> 
            </select>
        </div>
        <!-- Campo de cidade com css de classe "campo" -->
        <div class="campo">
            <label for="cidade"><strong>Cidade: </strong></label>
            <input type="text" class="cidade" name="user_cidade" required>
        </div>
        <!-- Campo de CEP com css de classe "campo" -->
        <div class="campo">
            <label for="cep"><strong>CEP: </strong></label>
            <input type="text" class="cep" name="user_cep" size="8" maxlength="8" placeholder="Ex.: xxxxx-xx" required> 
        </div>
        <!-- Campo de Email com css de classe "campo" -->
        <div class="campo">
            <label><strong>Dados de login</strong></label>
            <label for="email"><strong>Email</strong></label>
            <input type="email" class="email" name="user_email" id="email" required>
        </div>
        <!-- Campo de senha com css de classe "campo" -->
        <!--Polo produto-->
        <div class="campo">
            <label for="produtoname"><strong>Nome do produto: </strong></label>
            <input type="produtoname" class="produtoname" name="produtoname" required>
        </div>

        <div class="campo">
            <label for="descricao"><strong>Descriçao: </strong></label>
            <input type="descricao" class="descricao" name="descricao" required>
        </div>

        <div class="campo">
            <label for="tipo"><strong>Tipo: </strong></label>
            <input type="tipo" class="tipo" name="tipo" required>
        </div>

        <div class="campo">
            <label for="polo"><strong>Polo: </strong></label>
            <input type="polo" class="polo" name="polo" required>
        </div>

        <div class="campo">
            <label for="eProduct"><strong>Endereço do Produto: </strong></label>
            <input type="eProduct" class="eProduct" name="eProduct" required>
        </div>

        <div class="campo btn">
        <button type="submit">Cadastrar</button> 
        <a href="login.html" class="login">Login</a>
        <a href="index.html" class="retornar">Retornar</a>   
        </div>
    </div>
                
    </form>
    
</body>
</html>