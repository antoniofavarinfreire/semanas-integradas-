<?php
	include "header.php";
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
            <a class="nav-link" href="index.php">Home</a>
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
            <a class="nav-link" href="#">Cadastro
            	<span class="sr-only">(current)</span>
            </a> <!-- teste para uma posivel tela de login, estou testando uma nova bootstrap-->
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./login/login_via.html">Login</a> <!-- teste para uma posivel tela de login, estou testando uma nova bootstrap-->
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <div id="cadastro">
  	<form action="../Controller/cadastro.php" method="post">
  		<span class="cadSpan">Digite seu nome:</span>
  		<input type="text" name="nome" placeholder="Nome Usuario" class="cadInput" required>
  		<span class="cadSpan">Digite seu email:</span>
  		<input type="email" name="email" placeholder="usuario@email.com" class="cadInput" required>
  		<span class="cadSpan">Crie uma senha:</span>
      <input type="password" name="senha" placeholder="********" class="cadInput" required>
      <span class="cadSpan">Data de Nascimento:</span>
      <input type="date" name="Data de Nascimento" placeholder="********" class="cadInput" required>
  		<span class="span">É aluno:</span>
 		<input type="radio" name="aluno" value="sim" class="radioInput"><span class="radioInput">Sim</span>
 		<input type="radio" name="aluno" value="nao" class="radioInput" id="rightRadio"><span class="radioInput">Não</span>
 		<br>
 		<br>
  		<div id = "hiddenInput">
  			<span class="cadSpan">Digite seu cpf:</span>
  			<input class="cadInput" type="text" name="cpf" placeholder="123.456.789-00">
  		</div>
    <!--<input type="submit" class="inputButton" value="Enviar">-->
      <a href="" class="btn btn-block btn-outline-info"> <i class="fab fa-google"></i>   Login via Google</a>
      <a href="" class="btn btn-block btn-outline-primary"> <i class="fab fa-facebook-f"></i>   Login via facebook</a>
      <a href="" class="btn btn-block btn-outline-primary"> <i class="fab fa-facebook-f"></i>   Criar Cadastro</a>
    </form>
    <p>
      
    </p>
    
  </div>
</body>
</html>