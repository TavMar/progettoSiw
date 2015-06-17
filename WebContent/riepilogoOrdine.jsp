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
		<h:form>
			<div class="sfondo_trasparente">
				<div class="page-header" style="margin-top: 0px">
					<h1>Ecco il riepilogo del tuo ordine:</h1>
				</div>
				<div>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Prodotto</th>
								<th>Prezzo</th>
								<th>Quantita'</th>
								<th>Totale</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<c:forEach var="orderLine"
									items="#{ordineController.ordineCorrente.getLineeOrdine()}">
									<tr>
										<th>${orderLine.prodotto.getName()}</th>
										<th>${orderLine.prezzo}</th>
										<th>${orderLine.quantita}</th>
										<th>${orderLine.totale}</th>
								</c:forEach>
							</tr>
						</tbody>
					</table>
				</div>
				<h:form>
					<h:outputLink value="customerIndex.jsp"> Torna alla home </h:outputLink>
				</h:form>
			</div>
			<%-- <table>
				<c:forEach var="ordine" items="#{ordineController.getAllOrders()}">
					<tr>
						<th>Codice di riferimento</th>
						<th>Data Creazione</th>
					</tr>
					<tr>
						<td><h:commandLink action="#{ordineController.findOrder}"
								value="#{ordine.id}">
								<f:param name="id" value="#{ordine.id}"></f:param>
							</h:commandLink></td>
						<td>${ordine.dataCreazione}</td>
					</tr>

				</c:forEach>
			</table>
 --%>
		</h:form>
	</f:view>
</body>
</html>












