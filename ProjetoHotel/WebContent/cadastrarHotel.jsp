<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  	
	
	
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
	<header class="navbar navbar-inverse navbar-fixed-top">
		<!-- barra de navegacao do topo -->
		
			<c:import url="includes/menuAdm.jsp"></c:import>
		
		<!-- fim navbar  -->
	</header>
	
	<section>
	
		<!-- INICIO DA MAIN -->		
		<div id="main" class="container-fluid">

	<!-- CAIXA DE BUSCA -->		 		
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
			        <a href="cadastroHotel.jsp" class="btn btn-primary pull-right h2">Novo</a>
			    </div>
			</div> <!-- /#top -->
	
	<!--================================================================================ -->
	<!-- INICIO DA TABELA -->
			<div id="list" class="row">
			 
			    <div class="table-responsive col-md-12">
			        <table class="table table-striped" cellspacing="0" cellpadding="0">
			            <thead>
			                <tr>
			                    <th>ID</th>
			                    <th>Header 1</th>
			                    <th>Header 2</th>
			                    <th>Header 3</th>
			                    <th class="actions">Ações</th>
			                 </tr>
			            </thead>
			            <tbody>
			 
			                <tr>
			                    <td>1001</td>
			                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing</td>
			                    <td>Jes</td>
			                    <td>01/01/2015</td>
			                    <td class="actions">
			                        <a class="btn btn-success btn-xs" href="view.html">Visualizar</a>
			                        <a class="btn btn-warning btn-xs" href="edit.html">Editar</a>
			                        <a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
			                    </td>
			                </tr>
			 
			            </tbody>
			         </table>
			 
			     </div>
			 </div> <!-- /#list -->
	 
		</div>  <!-- /#main -->
		
	</section>
	
	<footer>
	
	</footer>	
		
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>