<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/tema2.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<f:view>
		<h:panelGroup>
			<h:form>
				<legend>Esegui Accesso:</legend>
				<div style="width: 150px; float: left;">
					<div>
						<label for="email">Email</label>

						<h:inputText value="#{adminController.email}" required="true"
							requiredMessage="Campo obbligatorio" id="email" />
						<h:message for="email" />
					</div>
					<div>
						<label for="password">Password</label>
						<h:inputSecret value="#{adminController.password}"
							required="true" requiredMessage="Campo obbligatorio"
							id="password" />
						<h:message for="password" />
					</div>
					<h:commandButton value="Entra"
						action="#{adminController.checkLogin(adminController.email)}" />
					<div class="alert alert-danger" role="alert">
						<strong>${adminController.errore}</strong>
					</div>
				</div>
			</h:form>
		</h:panelGroup>
	</f:view>
</body>
</html>                                		




