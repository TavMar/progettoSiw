<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/Tema.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>CATALOGO</title>
</head>
<body>
	<f:view>
		<div class="sfondo_trasparente">
			<div class="page-header" style="margin-top: 0px">
				<h1>Ecco i prodotti nel catalogo</h1>
			</div>
			<div>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Nome</th>
							<th>Prezzo </th>
							<!-- <th>Codice</th> -->
							
							<!-- <th>Descrizione</th> 	
							<th>Quantita'</th> -->
						</tr>
					</thead>
					<tbody>
						<tr>
							<c:forEach var="product"
								items="#{productController.listProducts()}">
								<tr>
								<th>
									<h:form>
										<h:commandLink action="#{productController.findProduct}"
											value="#{product.name}">
											<f:param name="id" value="#{product.id}" />
										</h:commandLink>
									</h:form>
								</th>
								<th>${product.price}</th>
								<%-- <th>${product.code}</th> --%>
								
								<%-- <th>${product.description}</th>
								<th>${product.quantity}</th> --%>
							</c:forEach>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<h:form>

			<h:panelGroup rendered="#{ordineController.customerStaOrdinando()}">
				<div>
					<h:commandButton value="Annulla ordine"
						action="#{ordineController.cancellaOrdine}"></h:commandButton>
				</div>
			</h:panelGroup>
		</h:form>
		<h:form>
			<h:panelGroup rendered="#{ordineController.customerPuoConcludere()}">
				<h:commandButton value="Salva Ordine"
					action="#{ordineController.terminaOrdine()}"></h:commandButton>
			</h:panelGroup>
		</h:form>
		<br />
	</f:view>
</body>
</html>