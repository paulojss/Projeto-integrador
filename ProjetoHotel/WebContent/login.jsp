<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="css/main.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Creative One Page Parallax Template">
	<meta name="keywords" content="Creative, Onepage, Parallax, HTML5, Bootstrap, Popular, custom, personal, portfolio" />
	<meta name="author" content="">	
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/prettyPhoto.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link href="css/formulario.css" rel="stylesheet">
	<link rel="shortcut icon" href="images/ico/hotelcomlogo.png">
	<title>Autenticação - Usuário</title>
</head>
<body class="login-page">
	<div>
	  <jsp:include page="menuPagina.jsp"/>
	  	<div id="id01" class="modalLogin">
			<form class="modal-content animate" method="post" action="LoginController">
				<div>
				<h3 class="widget-overlay-hd">Fazer Login</h3>
				<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Fechar">&times;</span>
				<i id="tamanhoUser" class="fa fa-user" aria-hidden="true"></i>
				</div>

				<div class="containerLogin">
				<label><b>Email</b></label>
				<input type="text" placeholder="Digite seu e-mail" name="email" required>

				<label><b>Senha</b></label>
				<input type="password" placeholder="Digite sua senha" name="senha" required>
					
				<button id="input" type="submit"name="action" value="login">Login</button>
				<br>
				<label id="erro" name="erro"><c:out value="${error}"/></label>
				</div>
			</form>
		</div>
	</div>
	
	<footer id="footer">
		<div class="container">
			<div class="text-center">
				<p>Hotel &copy; 2017 - <a href="">Projeto Faculdade</a> | Fatesg</p>
			</div>
		</div>
	</footer>
	<!--/#footer-->

	
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/smoothscroll.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/jquery.parallax.js"></script>
	<script type="text/javascript" src="js/main.js"></script>	
</body>
</html>