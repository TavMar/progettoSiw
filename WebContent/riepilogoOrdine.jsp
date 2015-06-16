<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/Tema.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Prodotti di un ordine</title>
</head>
<body>
	<f:view>
		<h1>Riepilogo del tuo ordine:</h1>

		<table>
			<tr>
				<th>Nome</th>
				<th>Prezzo</th>
				<th>Quantita'</th>
			</tr>
			<c:forEach var="orderLine" items="#{ordineController.ordineCorrente.getLineeOrdine()}">

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












