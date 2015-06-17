<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/tema2.css"></link>
<meta charset="US-ASCII">
<title>ESAME SIW PROVA1</title>

</head>
<body>
	<h1> M&M E-Commerce</h1>
	<h2>Bentornato, ${adminController.getAdminCorrente().nome}</h2>

	<nav class="navbar navbar-default" role="navigation">
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav navbar-right">

				<li class="active"><a
					href='<c:url value="/faces/nuovoCliente.jsp"/>'>Inserisci Nuovo
						Cliente</a></li>
				<li><a href='<c:url value="/faces/nuovoProdotto.jsp"/>'>Inserisci
						Nuovo Prodotto</a></li>
				<li><a href='<c:url value="/faces/cercaInfo.jsp"/>'>Ricerca
						Cliente</a></li>
				<li><a href='<c:url value="/faces/prodotti.jsp"/>'>Visualizza
						il catalogo prodotti</a></li>

			</ul>

		</div>
	</nav>





	<%-- 
	<h1>BENVENUTO NEL NUOVO MONDO DELL' E-COMMERCE</h1>
	<button class="btn btn-success">
		<a type="button" href='<c:url value="/faces/nuovoProdotto.jsp" />'>Inserisci
			Prodotto</a>
	</button>
	<button class="btn btn-success">
		<a type="button" href='<c:url value="/faces/prodotto.jsp" />'>Visualizza Prodotto</a>
	</button>
	<button class="btn btn-success">
		<a type="button" href='<c:url value="/faces/login.jsp" />'>Login</a>
	</button> --%>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

</body>
</html>