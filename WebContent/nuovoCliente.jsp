<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Registra un nuovo cliente</title>
</head>
<body>
<f:view>
<h:form>
    <div>Nome: <h:inputText value="#{adminController.nome}" 
                     required="true"
                     requiredMessage="Il nome è obbligatorio" 
                     id="nome"/> <h:message for="nome" />
	</div>
    <div>Cognome: <h:inputText value="#{adminController.cognome}" 
                     required="true"
                    requiredMessage="Il cognome è obbligatorio" 
                     id="cognome"/> <h:message for="cognome" />
	</div>
    <div>Email: <h:inputText value="#{adminController.email}" 
                     required="true"
                 requiredMessage="Il prezzo è obbligatorio"
                     id="email"/> <h:message for="email" />
	</div>
	<div>Password: <h:inputText value="#{adminController.password}" 
                     required="true"
                  requiredMessage="Il prezzo è obbligatorio"
                     id="password"/> <h:message for="password" />
	</div>
	

	<div>
		<h:commandButton value="Inserisci"  action="#{adminController.createCustomer}"/>
	</div>
</h:form>
</f:view>
</body>
</html>