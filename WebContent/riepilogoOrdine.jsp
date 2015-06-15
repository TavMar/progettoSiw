<!DOCTYPE html>
<html xmlns:h="http://java.sun.com/jsf/html"
 	  xmlns:f="http://java.sun.com/jsf/core"
 	  xmlns:c="http://java.sun.com/jsp/jstl/core">
<h:head>
<title>Prodotti di un ordine</title>
</h:head>
<h:body>
		<h1>Ecco i prodotti nell'ordine </h1>
		
			<table>
			<tr><th>Nome</th><th>Prezzo</th><th>Quantita'</th> </tr>
			<c:forEach var="orderLine" items="#{ordineController.ordineCorrente.getLineeOrdine()}">
				
				<td>${orderLine.prezzo}</td>
				<td>${orderLine.quantita}</td>
			
			</c:forEach>
			</table>
			<br/>
			<h:form>
	
		<h:panelGroup rendered="#{ordineController.customerStaOrdinando()}">
		<div><h:commandButton value="Cancella ordine" action="#{ordineController.cancellaOrdine}"></h:commandButton></div>
		</h:panelGroup>
		
		<h:panelGroup rendered="#{orderController.customerPuoConcludere()}">
			<h:commandButton value="Chiudi Ordine" action="#{ordineController.terminaOrdine}"></h:commandButton>
		</h:panelGroup>
		
	</h:form>
			

</h:body>
</html>












