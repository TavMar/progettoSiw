
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>ESAME SIW PROVA1</title>
<!-- Bootstrap -->
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
</head>
<body>

	<h1>BENVENUTO NEL NUOVO MONDO DELL' E-COMMERCE</h1>
	<button class="btn btn-success">
		<a type="button" href='<c:url value="nuovoProdotto.jsp" />'>Inserisci
			Prodotto</a>
	</button>
	<button class="btn btn-success">
		<a type="button" href='<c:url value="prodotto.jsp" />'>Visualizza Prodotto</a>
	</button>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>