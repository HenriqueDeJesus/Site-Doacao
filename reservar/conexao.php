<?php

//Credenciais de acesso ao BD
define('HOST', 'localhost');
define('USER', 'id19494216_usuariofatec');
define('PASS', 'Etec$1234567');
define('DBNAME', 'id19494216_bancofuncionario');

$conn = new PDO('mysql:host=' . HOST . ';dbname=' . DBNAME . ';', USER, PASS);
