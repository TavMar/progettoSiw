<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Log In </title>
</head>
<body>
	<f:view>
	<h:form>
		<div>Email: <h:inputText value="#{customerController.email}"
		required="true"
		requiredMessage="Campo obbligatorio"
		id="email"/><h:message for="email"/>
		</div>
		<div>Password: <h:inputSecret value = "#{customerController.password}"
		required="true"
		requiredMessage="Campo obbligatorio"
		id="password"/><h:message for="passw"/>
		</div>
		<h:commandButton value ="Entra" action="#{customerController.checkLogin()}"/>
	</h:form>
	</f:view>
</body>
</html>



































<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<f:view>
		<h1>LOGIN</h1>
		<div class="container">
			<h:form>
				<div class="form-group">
					<label for="inputEmail">Email</label>
					<h:inputText value="#{customerController.email}" required="true"
						requiredMessage="Campo obbligatorio" id="email" />
					<h:message for="email" />
				</div>
				<div class="form-group">
					<label for="inputPassword">Password</label>
					<h:inputSecret value="#{customerController.password}"
						required="true" requiredMessage="Campo obbligatorio" id="password" />
					<h:message for="password" />
				</div>
				<h:commandButton value="Inserisci" action="#{customerController.checkLogin}"/>

				</h:form>
		</div>
	</f:view>
</body>
</html>







	<f:view>
		<table>
			<tr>
				<td><h:outputText value="EMAIL:" /></td>
				<td><h:inputText id="email" value="#{customerController.email}" /></td>
			</tr>
			<tr>
				<td><h:outputText value="PASSWORD:" /></td>
				<td><h:inputSecret id="password"
						value="#{customerController.password}" /></td>
			</tr>

			<tr>
				<td><h:commandButton value="Login"
						action="#{customerController.checkLogin(customerController.email)}" /></td>
			</tr>
		</table>

	</f:view>
></body>
</html>


 --%>