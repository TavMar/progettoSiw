<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>CATALOGO</title>
</head>
<body>
	<f:view>
		<h1>Ecco il nostro catalogo prodotti:</h1>
		<h:form>
			<table>
				<tr>
					<th>Nome</th>
					<th>Codice</th>
					<th>Prezzo</th>
					<th>Descrizione</th>
					<th>Quantita'</th>
				</tr>
				<c:forEach var="product" items="#{productController.listProducts()}">
					<tr>
						<td><h:commandLink action="#{productController.findProduct}"
								value="#{product.name}">
								<f:param name="id" value="#{product.id}" />
							</h:commandLink></td>
						<td>${product.code}</td>
						<td>${product.price}</td>
						<td>${product.description}</td>
						<td>${product.quantity}</td>
					</tr>
				</c:forEach>
			</table>
		</h:form>
		<h:form>

			<h:panelGroup rendered="#{ordineController.customerStaOrdinando()}">
				<div>
					<h:commandButton value="Annulla ordine"
						action="#{ordineController.cancellaOrdine}"></h:commandButton>
				</div>
			</h:panelGroup>

			<h:panelGroup rendered="#{ordineController.customerPuoConcludere()}">
				<h:commandButton value="Salva Ordine"
					action="#{ordineController.terminaOrdine()}"></h:commandButton>
			</h:panelGroup>

		</h:form>
		<br />
		<h:form>
			<h:panelGroup rendered="#{sessioneController.adminLoggato()}">
				<div>
					<a href='adminIndex'>Torna alla home</a>
				</div>
			</h:panelGroup>
			<h:panelGroup rendered="#{sessioneController.customerLoggato()}">
				<div>
					<a href='customerIndex'>Torna alla home</a>
				</div>
			</h:panelGroup>
			<h:panelGroup rendered="#{sessioneController.nessunoLoggato()}">
				<div>
					<a href='index'>Torna alla home</a>
				</div>
			</h:panelGroup>
		</h:form>
	</f:view>
</body>
</html>