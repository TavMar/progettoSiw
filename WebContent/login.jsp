<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
	<h1>LOGIN</h1>
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
</body>
</html>


