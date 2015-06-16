<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prodotti di un ordine</title>
</head>
<body>
	<f:view>
		<h1>Ecco i prodotti nell'ordine :</h1>

		<table>
			<tr>
				<th>Nome</th>
				<th>Prezzo</th>
				<th>Quantita'</th>
			</tr>
			<c:forEach var="orderLine"
				items="${ordineController.ordineCorrente.getLineeOrdine()}">

				<td>${orderLine.prodotto.name}</td>
				<td>${orderLine.prezzo}</td>
				<td>${orderLine.quantita}</td>

			</c:forEach>
		</table>
		<br />
		<h:form>


			<div>
				<a href='ordini.jsp'>Torna alla lista di ordini</a>
			</div>
			<a href='customerIndex.jsp'>Torna alla home</a>


		</h:form>

	</f:view>
</body>
</html>











