<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/Tema.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Descrizione Prodotto:</title>
</head>
<body>
	<f:view>
		<div class="sfondo_trasparente" style="float: left; width: 40%">
			<legend>Dettagli prodotto:</legend>
			<div style="width: 150px; float: left;">
				<div>
					<label for="nome">Nome</label>
					<div>${productController.product.name}</div>
				</div>
				<div>
					<label for="codice">Codice</label>
					<div>${productController.product.code}</div>
				</div>
				<div>
					<label for="prezzo">Prezzo</label>
					<div>${productController.product.price}</div>
				</div>
				<div>
					<label for="descrizione">Descrizione</label>
					<div>${productController.product.description}</div>
				</div>
				<div>
					<label for="quantita">Quantita'</label>
					<div>${productController.product.quantity}</div>
				</div>
				<%-- <div>Codice: ${productController.product.code}</div>
		<div>Prezzo: ${productController.product.price}</div>
		<div>Descrizione: ${productController.product.description}</div>
		<div>Quantita': ${productController.product.quantity}</div> --%>
				<br />

				<h:panelGroup rendered="#{ordineController.customerStaOrdinando()}">
					<h:form>
						<div>
							Quantita' :
							<h:inputText value="#{ordineController.quantity}" required="true"
								requiredMessage="campo obbligatorio" id="quantity">
							</h:inputText>
							<h:message for="quantity" />
							<div>
								<h:commandButton value="Aggiungi all'acquisto"
									action="#{ordineController.addProdotto}">
								</h:commandButton>
							</div>
						</div>
					</h:form>
				</h:panelGroup>
				<a href='prodotti.jsp'>Torna al catalogo</a>
			</div>
		</div>
	</f:view>
</body>
</html>