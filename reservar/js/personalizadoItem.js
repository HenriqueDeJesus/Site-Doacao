$(document).ready(function () {   
    $("input[name='idproduto']").blur(function () {
        var $produtoname = $("input[name='produtoname']");
        var $descricao = $("input[name='descricao']");
        var $tipo = $("input[name='tipo']");
        var $polo = $("input[name='polo']");
        var $eProduct = $("input[name='eProduct']");
        var idproduto = $(this).val();
        
        $.getJSON('pesq_user.php', {idproduto},
        function(retorno){
                $produtoname.val(retorno.produtoname);
                $descricao.val(retorno.descricao);
                $tipo.val(retorno.tipo);
                $polo.val(retorno.polo);
                $eProduct.val(retorno.eProduct);
            }
        );        
    });
});