const formulario = document.querySelector("form");
const Inome = document.querySelector(".nome");
const Isobrenome = document.querySelector(".sobrenome");
const Icpf = document.querySelector(".cpf");
const Itipo = document.querySelector(".tipo");
const Irua = document.querySelector(".rua");
const Inumero = document.querySelector(".numero");
const Ibairro = document.querySelector(".bairro");
const Iestado = document.querySelector(".estado");
const Icidade = document.querySelector(".cidade");
const Icep = document.querySelector(".cep");
const Iemail = document.querySelector(".email");
const Isenha = document.querySelector(".senha");

function cadastrar() {

  fetch("https://databases-auth.000webhost.com/db_structure.php?server=1&db=id19494216_bancofuncionarios", 
  {
    headers: {
      "Accept": "application/json",
      "Content-Type": "application/json"
    },
    method: "POST",
    body: JSON.stringify({
      nome: Inome.value,
      sobrenome: Isobrenome.value,
      cpf: Icpf.value,
      tipo: Itipo.value,
      rua: Irua.value,
      numero: Inumero.value,
      bairro: Ibairro.value,
      estado: Iestado.value,
      cidade: Icidade.value,
      cep: Icep.value,
      email: Iemail.value,
      senha: Isenha.value})
  })
  .then(function (res) { console.log(res)})
  .catch(function (res) { console.log(res)})

};

function limpar () {
  Inome.value = "",
  Isobrenome.value = "",
  Icpf.value = "",
  Itipo.value = "",
  Irua.value = "",
  Inumero.value = "",
  Ibairro.value = "",
  Iestado.value = "",
  Icidade.value = "",
  Icep.value = "",
  Iemail.value = "",
  Isenha.value = ""
}

formulario.addEventListener("submit", function (event){
  event.preventDefault();

  cadastrar();
  limpar();
});