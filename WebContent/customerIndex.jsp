<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<f:view>
<head>
<meta charset="US-ASCII">
<title>ESAME SIW PROVA1</title>
<!-- Bootstrap -->
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
</head>
<body>
	<h1>PAGINA CLIENTE</h1>

	<nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<a class="navbar-brand" href="customerIndex.jsp">Home</a>
		</div>
		<div>
			<h2>${customerController.getCurrentCustomer().nome}
				${customerController.getCurrentCustomer().cognome}</h2>
		</div>
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><h:form>

						<h:commandLink styleClass="btn btn-success" value="Crea Ordine"
							action="#{ordineController.initOrder()}" />

					</h:form>
				<li><a href='<c:url value="/faces/ordini.jsp"/>'>Lista
						Ordini</a></li>
				<li><a href='<c:url value="/faces/prodotti.jsp"/>'>Catalogo</a></li>

			</ul>
		</div>

	</nav>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</f:view>
</html>