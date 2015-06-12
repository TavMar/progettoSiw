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
	<div>Data di Nascita: <h:inputText value="#{adminController.dataDiNascita}" 
                     required="true"
                     requiredMessage="La data di nascita e' obbligatoria"
                     id="dataDiNascita"/> <h:message for="dataDiNascita" />
			</div>
			
			
			<p>Indirizzo</p>
			<div>Via: <h:inputText value="#{adminController.via}" 
    				required="true"
    				requiredMessage="L'indirizzo e' obbligatorio"
                    id="via"/> <h:message for="via" />            
			
			 Cap: <h:inputText value="#{adminController.cap}" 
    				required="true"
    				requiredMessage="Il cap e' obbligatori"
                    id="cap"/> <h:message for="cap" />  
             </div>                 
			<div>Citta': <h:inputText value="#{adminController.citta}" 
    				required="true"
    				requiredMessage="La citta' e' obbligatoria"
                    id="citta"/> <h:message for="citta" />            
			
				Provincia: <h:inputText value="#{adminController.stato}" 
    				required="true"
    				requiredMessage="La provincia e' obbligatoria"
                    id="stato"/> <h:message for="stato" />                       
			</div>
	

	<div>
		<h:commandButton value="Inserisci"  action="#{adminController.createCustomer}"/>
	</div>
</h:form>
</f:view>
</body>
</html>