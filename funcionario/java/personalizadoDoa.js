$(document).ready(function () {
    $("input[name='cpf']").blur(function () {
        var $user_nome = $("input[name='user_nome']");
        var $sobre = $("input[name='sobre']");
        var $rua = $("input[name='rua']");
        var $numero = $("input[name='numero']");
        var $bairro = $("input[name='bairro']");
        var $user_estado = $("input[name='user_estado']");
        var $cidade = $("input[name='cidade']");
        var $cep = $("input[name='cep']");
        var $email = $("input[name='email']");
        var cpf = $(this).val();
        
        $.getJSON('proc_pesq_user.php', {cpf},
            function(retorno){
                $user_nome.val(retorno.user_nome);
                $sobre.val(retorno.sobre);
                $rua.val(retorno.rua);
                $numero.val(retorno.numero);
                $bairro.val(retorno.bairro);
                $user_estado.val(retorno.user_estado);
                $cidade.val(retorno.cidade);
                $cep.val(retorno.cep);
                $email.val(retorno.email);
            }
        );        
    });
});