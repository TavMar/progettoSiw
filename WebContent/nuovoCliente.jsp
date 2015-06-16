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
<title>Registra un nuovo cliente</title>
</head>
<body>
	<f:view>
		<h:form>
		<div class="sfondo_trasparente"
				style="float: left; width: 40%">
			<legend>Inserisci qui le credenziali:</legend>
			<div style="width: 150px; float: left;">
				<div>
					<label for="nome">Nome</label>
					<h:inputText value="#{adminController.nome}" required="true"
						requiredMessage="Il nome è obbligatorio" id="nome" />
					<h:message for="nome" />
				</div>
				<div>
					<label for="cognome">Cognome</label>
					<h:inputText value="#{adminController.cognome}" required="true"
						requiredMessage="Il cognome è obbligatorio" id="cognome" />
					<h:message for="cognome" />
				</div>
				<div>
					<label for="email">Email</label>
					<h:inputText value="#{adminController.email}" required="true"
						requiredMessage="Campo obbligatorio" id="email" />
					<h:message for="email" />
				</div>
				<div>
					<label for="password">Password</label>
					<h:inputText value="#{adminController.password}" required="true"
						requiredMessage="Campo obbligatorio" id="password" />
					<h:message for="password" />
				</div>
				<div>
					<label for="dataDiNascita">Data di Nascita</label>
					<h:inputText value="#{adminController.dataDiNascita}"
						required="true"
						requiredMessage="La data di nascita e' obbligatoria"
						id="dataDiNascita" />
					<h:message for="dataDiNascita" />
				</div>

				<legend>Indirizzo</legend>
				<!-- 	<p>Indirizzo</p> -->
				<div>
					<label for="via">Via</label>
					<h:inputText value="#{adminController.via}" required="true"
						requiredMessage="L'indirizzo e' obbligatorio" id="via" />
					<h:message for="via" />
				</div>
				<div>
					<label for="cap">Cap</label>
					<h:inputText value="#{adminController.cap}" required="true"
						requiredMessage="Il cap e' obbligatorio" id="cap" />
					<h:message for="cap" />
				</div>

				<div>
					<label for="citta">Citta'</label>
					<h:inputText value="#{adminController.citta}" required="true"
						requiredMessage="La citta' e' obbligatoria" id="citta" />
					<h:message for="citta" />
				</div>
				<div>
					<label for="provincia">Provincia</label>
					<h:inputText value="#{adminController.stato}" required="true"
						requiredMessage="La provincia e' obbligatoria" id="stato" />
					<h:message for="stato" />
				</div>


				<div>
					<h:commandButton value="Inserisci"
						action="#{adminController.createCustomer}" />
				</div>
			</div>
			</div>
		</h:form>
	</f:view>
</body>
</html>