<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inserisci un nuovo prodotto:</title>
</head>
<body>
	<f:view>
		<h:form>
			<div>
				Nome:
				<h:inputText value="#{prodottoController.nome}" required="true"
					requiredMessage="Il nome è obbligatorio" id="nome" />
				<h:message for="nome" />
			</div>
			<div>
				Codice:
				<h:inputText value="#{prodottoController.codice}" required="true"
					requiredMessage="Il codice è obbligatorio" id="codice" />
				<h:message for="codice" />
			</div>
			<div>
				Prezzo:
				<h:inputText value="#{prodottoController.prezzo}" required="true"
					requiredMessage="Il prezzo è obbligatorio"
					converterMessage="Il prezzo deve essere un numero" id="prezzo" />
				<h:message for="prezzo" />
			</div>
			<div>
				Descrizione:
				<h:inputTextarea value="#{prodottoController.descrizione}"
					required="false" cols="20" rows="5" />
			</div>
			<div>
				<h:commandButton value="Invia"
					action="#{prodottoController.creaProdotto}" />
			</div>
	<h:commandLink action="#{productController.listaProdotti}"
						value="Lista di tutti i prodotti" />
		</h:form>
	</f:view>
</body>
</html>