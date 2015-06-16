<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/Tema.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Inserisci un nuovo prodotto</title>
</head>
<body>
<f:view>
<h:form>
    <div>Name: <h:inputText value="#{productController.name}" 
                     required="true"
                     requiredMessage="Il nome è obbligatorio"
                     id="name"/> <h:message for="name" />
	</div>
    <div>Code: <h:inputText value="#{productController.code}" 
                     required="true"
                     requiredMessage="Il codice è obbligatorio"
                     id="code"/> <h:message for="code" />
	</div>
    <div>Price: <h:inputText value="#{productController.price}" 
                     required="true"
                     requiredMessage="Il prezzo è obbligatorio"
                     converterMessage="Il prezzo deve essere un numero"
                     id="price"/> <h:message for="price" />
	</div>
	<div>Quantita': <h:inputText value="#{productController.quantity}" 
                     required="true"
                     requiredMessage="Il prezzo è obbligatorio"
                     converterMessage="Il prezzo deve essere un numero"
                     id="quantity"/> <h:message for="quantity" />
	</div>
    <div>Description: <h:inputTextarea value="#{productController.description}" 
    				required="false" 
    				cols="20" 
    				rows="5" /> 
                     
	</div>
	<div>
		<h:commandButton value="Inserisci"  action="#{productController.createProduct}"/>
	</div>
</h:form>
</f:view>
</body>
</html>