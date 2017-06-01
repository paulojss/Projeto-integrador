<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

   
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<title>Adm-Cadastrar Hotel</title>
		
		<!-- CSS do bootstrap -->
		<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
		
		<!-- http://fontawesome.io/ -->
		
		<!-- CSS personalizado -->
		<link rel="stylesheet" href="lib/css-personalizado/logado-admsystem.css">
		<link rel="stylesheet" href="lib/css-personalizado/frmclient.css">
		<link href="css/style.css" rel="stylesheet">
		
	</head>
	
	
	<body>
		
		<header class="navbar navbar-inverse navbar-fixed-top">
		
			<!-- barra de navegacao do topo -->
		
			<c:import url="includes/menuAdm.jsp"></c:import>
		
			<!-- fim navbar  -->
		
		</header>
		
		
		
			<div id="main" class="container-fluid" >
				<!-- INICIO DO FORMULARIO -->
				
				<h3 class="page-header">Cadastrar Hotel</h3>
				
				<form action="index.html">
				  
				  
				  
				  
				 
				 <hr /> 
				  <div id="actions" class="row">
				    <div class="col-md-12">
				      <button type="submit" class="btn btn-primary">Salvar</button>
				      <a href="index.html" class="btn btn-default">Cancelar</a>
				    </div>
				  </div>
				  
				</form>
			</div><!-- #div id main -->
		
		
		
		<footer>
		
		</footer>
	
		<script src="lib/jquery/jquery.min.js"></script>
		<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>