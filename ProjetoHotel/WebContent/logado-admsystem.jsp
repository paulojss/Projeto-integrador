<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Adminstração</title>

<!-- CSS do bootstrap -->
<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">

<!-- http://fontawesome.io/ -->

<!-- CSS personalizado -->
<link rel="stylesheet" href="lib/css-personalizado/logado-admsystem.css">
<link rel="stylesheet" href="lib/css-personalizado/frmclient.css">
<link href="css/style.css" rel="stylesheet">

</head>


<body>
		
		<!-- barra de navegacao do topo -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			 <div class="container-fluid">
			  <div class="navbar-header">
			   <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			    <span class="sr-only">Toggle navigation</span>
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			   </button>
			   <a class="navbar-brand" href="#">Hotel.com</a>
			  </div>
			  <div id="navbar" class="navbar-collapse collapse">
			   <ul class="nav navbar-nav navbar-right">
			    <li><a href="#">Início</a></li>
			    <li><a href="#">Opções</a></li>
			    <li><a href="#">Perfil</a></li>
			    <li><a href="#">Ajuda</a></li>
			   </ul>
			  </div>
			 </div>
		</nav><!-- fim navbar  -->
		
		<div id="main" class="container-fluid">
		 		
		 		<div id="top" class="row">
    <div class="col-md-3">
        <h2>Itens</h2>
    </div>
 
    <div class="col-md-6">
        <div class="input-group h2">
            <input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Itens">
            <span class="input-group-btn">
                <button class="btn btn-primary" type="submit">
                    <span class="glyphicon glyphicon-search"></span>
                </button>
            </span>
        </div>
    </div>
 
    <div class="col-md-3">
        <a href="add.html" class="btn btn-primary pull-right h2">Novo Item</a>
    </div>
</div> <!-- /#top -->
		</div>  <!-- /#main -->
		
		
		
		
		
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>