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
          <li class="nav-item">
            <a class="nav-link" href="cronograma.php">Cronograma</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="minicursos.php">Minicursos</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Palestras
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cadastro.php">Cadastro</a> <!-- teste para uma posivel tela de login, estou testando uma nova bootstrap-->
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Login</a> <!-- teste para uma posivel tela de login, estou testando uma nova bootstrap-->
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h1 class="mt-5">Palestras</h1>
        <div id="bloco">
          <h6 id="caixa">Palestras Computação</h6>
          <p id="info-bloco">lista de palestras</p>
        </div>
        <div id="bloco">
          <h6 id="caixa">Palestras Engenharia Elétrica</h6>
          <p id="info-bloco">lista de palestras</p>
        </div>
        <div id="bloco">
          <h6 id="caixa">Palestras Engenharia Mecânica</h6>
          <p id="info-bloco">lista de palestras</p>
        </div>
        <div id="bloco">
          <h6 id="caixa">Palestras Engenharia de Produção</h6>
          <p id="info-bloco">lista de palestras</p>
        </div>
        <div id="bloco">
          <h6 id="caixa">Palestras Engenharia Civil</h6>
          <p id="info-bloco">lista de palestras</p>
        </div>
        <div id="bloco">
          <h6 id="caixa">Palestras Licenciaturas</h6>
          <p id="info-bloco">lista de palestras</p>
        </div>
      </div>
    </div>
  </div>

  <?php 
    include 'bottom.php';
  ?>

</body>

</html>
