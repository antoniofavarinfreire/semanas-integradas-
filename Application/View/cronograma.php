<?php

  include 'header.php';

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
          <li class="nav-item">
            <a class="nav-link" href="index.php">Home</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Cronograma
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="minicursos.php">Minicursos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="palestras.php">Palestras</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cadastro.php">Cadastro</a> <!-- teste para uma posivel tela de login, estou testando uma nova bootstrap-->
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./login/login_via.html">Login</a> <!-- teste para uma posivel tela de login, estou testando uma nova bootstrap-->
          </li>
        </ul>
      </div>
    </div>
  </nav>


  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h1 class="mt-5">Cronograma</h1>
      </div>
    </div>
    <div id="bloco">
      <h6 id="caixa">Computação</h6>
    </div>
    <div id="bloco">
      <h6 id="caixa">Elétrica</h6>
    </div>
    <div id="bloco">
      <h6 id="caixa">Civil</h6>
    </div>
    <div id="bloco">
      <h6 id="caixa">Produção</h6>
    </div>
    <div id="bloco">
      <h6 id="caixa">Licenciaturas</h6>
    </div>
    <div id="bloco">
      <h6 id="caixa">Mecânica</h6>
    </div>
  </div>


  <?php 
    include 'bottom.php';
  ?>

</body>

</html>
