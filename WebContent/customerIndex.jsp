<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<f:view>
	<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/Tema.css"></link>
<meta charset="US-ASCII">
<title>ESAME SIW PROVA1</title>
	</head>
	<body>
		<nav class="navbar navbar-default" role="navigation">
			<h1>M&M E-Commerce</h1>
			<h2>
				Benvenuto<small>
					${customerController.getCurrentCustomer().nome}
					${customerController.getCurrentCustomer().cognome}</small>
			</h2>
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
	</body>
</f:view>
</html>