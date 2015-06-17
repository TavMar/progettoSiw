<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/tema2.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Ricerca cliente:</title>
</head>
<body>
	<f:view>
		<h:form>
			<legend>Ricerca Ordine:</legend>
			<div style="width: 150px; float: left;">
				<div>
					<label for="id">Codice Identificativo</label>

					<h:inputText value="#{ordineController.idOrder}" required="true"
						requiredMessage="Campo obbligatorio" id="idOrder" />
					<h:message for="idOrder" />
				</div>
				<h:commandButton value="Cerca"
					action="#{ordineController.trovaUtente}" />
				<div class="alert alert-danger" role="alert">
					<strong>${ordineController.messaggio}</strong>
				</div>
			</div>
		</h:form>
	</f:view>
</body>
</html>