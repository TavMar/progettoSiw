<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/Tema.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In</title>
</head>
<body>
	<div>
		<h1>ACCEDI:</h1>
	</div>
	<f:view>
		<h:panelGroup>
			<h:form>
				<div>
					Email:
					<h:inputText value="#{customerController.email}" required="true"
						requiredMessage="Campo obbligatorio" id="email" />
					<h:message for="email" />
				</div>
				<div>
					Password:
					<h:inputSecret value="#{customerController.password}"
						required="true" requiredMessage="Campo obbligatorio" id="password" />
					<h:message for="password" />
				</div>
				<h:commandButton value="Entra"
					action="#{customerController.checkLogin(customerController.email)}" />
					<div class="alert alert-danger" role="alert">
						<strong>${customerController.errore}</strong>
					</div>
			</h:form>
		</h:panelGroup>
	</f:view>
</body>
</html>


