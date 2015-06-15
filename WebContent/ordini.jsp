<!DOCTYPE html>
<html xmlns:h="http://java.sun.com/jsf/html"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:c="http://java.sun.com/jsp/jstl/core">
<h:head>
	<title>Tuoi Ordini</title>
</h:head>
<h:body>
	<h1>Ecco i tuoi ordini effettuati</h1>
	<h:form>
		<table>
			<c:forEach var="ordine" items="#{ordineController.getAllOrders()}">
				<tr>
					<th>Data Creazione</th>
					<th>Data Chiusura</th>
				</tr>
				<tr>
					<td><h:commandLink value="#{ordine.dataCreazione}"
							action="#{ordineController.findOrder}">
							<f:param name="id" value="#{ordine.id}"></f:param>
						</h:commandLink></td>
					<td>${ordine.dataChiusura}</td>
				</tr>

			</c:forEach>
		</table>

	</h:form>
	<br />
	<h:form>
		<h:outputLink value="customerIndex.jsp"> Torna alla home </h:outputLink>
	</h:form>
</h:body>
</html>