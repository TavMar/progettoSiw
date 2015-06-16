<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/Tema.css"></link>
<meta charset="US-ASCII">
<title>ESAME SIW PROVA1</title> 
<!-- Bootstrap -->
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<head>
<body>
	<h1>BENVENUTO NEL NUOVO MONDO DELL' E-COMMERCE</h1>

<nav class="navbar navbar-default" role="navigation">
  <div class="navbar-header">
    <a class="navbar-brand" href="index.jsp">Home</a>
  </div>
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href='<c:url value="/faces/prodotti.jsp"/>'>Catalogo</a></li>
      <li><a href='<c:url value="/faces/login.jsp"/>'>Login</a></li>
      <li><a href='<c:url value="/faces/adminLogin.jsp"/>'>Amministratore</a></li>
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
<!-- 	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	Include all compiled plugins (below), or include individual files as needed
	<script src="js/bootstrap.min.js"></script> -->
</body>
</html>