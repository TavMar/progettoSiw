<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/tema2.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Inserisci un nuovo prodotto</title>
</head>
<body>
	<f:view>
		<h:form>
			<div class="sfondo_trasparente" style="float: left; width: 40%">
				<legend>Inserisci qui le credenziali:</legend>
				<div style="width: 150px; float: left;">
					<div>
						<label for="nome">Nome</label>
						<h:inputText value="#{productController.name}" required="true"
							requiredMessage="Campo obbligatorio" id="name" />
						<h:message for="name" />
					</div>
					<div>
						<label for="prezzo">Prezzo</label>
						<h:inputText value="#{productController.price}" required="true"
							requiredMessage="Campo obbligatorio" id="price" />
						<h:message for="price" />
					</div>
					<div>
						<label for="codice">Codice identificativo</label>
						<h:inputText value="#{productController.code}" required="true"
							requiredMessage="Campo obbligatorio" id="code" />
						<h:message for="code" />
					</div>
					<div>
						<label for="descrizione">Descrizione</label>
						<h:inputText value="#{productController.description}"
							required="false" />
					</div>
					<div>
						<label for="quantita'">Quantita'</label>
						<h:inputText value="#{productController.quantity}" required="true"
							requiredMessage="Campo obbligatorio" id="quantity" />
						<h:message for="quantity" />
					</div>
					<h:commandButton value="Inserisci"
						action="#{productController.createProduct}" />
				</div>
			</div>
		</h:form>
	</f:view>
</body>
</html>