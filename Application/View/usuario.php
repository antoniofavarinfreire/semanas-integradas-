<?php 

	include 'header.php';
	session_start();
  if (!isset($_SESSION['id'])){
    $_SESSION['message'] = 'Vaza daqui loco
    Ce nao manda em mim, bem feito';
    header("Location:index.php");
  }

?>

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
            <a class="nav-link" href="index.php">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cronograma.php">Cronograma</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="minicursos.php">Minicursos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="palestras.php">Palestras</a>
          </li>
          <li class="nav-item active">
          <a class="nav-link" href="#">Usuario</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="../Controller/desloga.php">Sair</a>
          </li>
            
        </ul>
      </div>
    </div>
  </nav>
  <div id = "deg">
  	<div id = "dados-usuario">
  	<h3 id = "h3ud">Seus dados</h3>
  	<div class = "grid-test">
  		<div class="grid-item-test">Nome do usuario </div>
  		<div class="grid-item-test">Email do usuario </div>
  		<div class="grid-item-test">Curso do usuario </div>
  		<div class="grid-item-test">Quantidade de minicursos inscritos </div>
  		<div class="grid-item-test">Quantidade de palestras inscritos </div>
  	</div>
  	<div id = "botao">
		<form method="post" action="#">
    		<button type="submit" id="button">Editar dados</button>
		</form>
	</div>

  	<!--<ul class= "navbar-nav ml-auto" id = "ud">
  		<li id = "liud">Nome do usuario</li>
  		<li id = "liud">Email do usuario</li>
  		<li id = "liud">Quantidade de minicursos inscritos: %d</li>
  		<li id = "liud">Quantidade de palestras inscritos: %d</li>
  	</ul>-->
	</div>
		<div id = "grafico">
		<h3 id = "h3ud">Carga horaria</h3>
		<img src="../../Assets/img/branco.png" id= "img">
	</div>
	
  </div>
  
<?php 

	include 'bottom.php';

?>