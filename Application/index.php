<?php

include 'header.php';

date_default_timezone_set('America/Sao_Paulo');

if (version_compare(PHP_VERSION, '7.0.0') == -1)
{
    die('A versão mínima do PHP para rodar esta aplicação é: 7.0.0');
}

// Lib loader
require_once 'Lib/SGE/Core/ClassLoader.php';
$al= new SGE\Core\ClassLoader;
$al->addNamespace('SGE', 'Lib/SGE');
$al->register();

// App loader
require_once 'Lib/SGE/Core/AppLoader.php';
$al= new SGE\Core\AppLoader;
$al->addDirectory('Application/Control');
$al->addDirectory('Application/Model');
$al->register();

// Vendor
$loader = require 'vendor/autoload.php';
$loader->register();



?>
<!DOCTYPE html>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
      <a class="navbar-brand" href="#">Semanas Eventos Integradas</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="View/cronograma.php">Cronograma</a>
            </li>
          <li class="nav-item">
            <a class="nav-link" href="View/minicursos.php">Minicursos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="View/palestras.php">Palestras</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="View/cadastro.php">Cadastro</a> <!-- teste para uma posivel tela de login, estou testando uma nova bootstrap-->
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./login/login_via.html">Login</a> <!-- login esta operacional, falta fazer a coleta dos usuarios querendo usar google e face-->
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h1 class="mt-5">Semanas Eventos Integradas</h1>
        <?php 
          session_start();
          if (isset($_SESSION['message'])){
            echo '<h1>'.$_SESSION['message'].'</h1>';
            session_destroy();
          }
        ?>
      </div>
    </div>
  </div>

  <?php 
    include 'View/bottom.php';
  ?>

</body>

</html>
