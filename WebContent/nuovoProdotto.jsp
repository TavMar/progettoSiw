<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inserisci un nuovo prodotto:</title>
</head>
<body>
	<f:view>
<h:form>
    <div>Name: <h:inputText value="#{prodottoController.nome}"  /></div>
 
    <div><h:commandButton value="Submit"  action="#{prodottoController.creaProdotto}"/></div>
</h:form>
</f:view>

			<%-- 	<h:outputLabel value="Codice:" />
				<h:inputText value="#{prodottoController.codice}" required="true"
					requiredMessage="Il codice è obbligatorio" id="codice" />
				<h:message for="codice" />

				<h:outputLabel value="Prezzo:" />
				<h:inputText value="#{prodottoController.prezzo}" required="true"
					requiredMessage="Il prezzo è obbligatorio"
					converterMessage="Il prezzo deve essere un numero" id="prezzo" />
				<h:message for="prezzo" />

				<h:outputLabel value="Descrizione:" />
				<h:inputTextarea value="#{prodottoController.descrizione}"
					required="false" cols="20" rows="5" />

				<h:commandButton value="Invia"
					action="#{prodottoController.creaProdotto}" />

				<h:commandLink action="#{productController.listaProdotti}"
					value="Lista di tutti i prodotti" />

		</h:form>
	</f:view> --%>
</body>
</html>