<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cliente:</title>
</head>
<body>
	<f:view>
		<div>Nome: ${adminController.customer.nome}</div>
		<div>Cognome: ${adminController.customer.cognome}</div>
		<div>Email: ${adminController.customer.email}</div>
		<div>Password: ${adminController.customer.password}</div>
	</f:view>
	<a href='adminIndex.jsp'>Torna alla home</a>
</body>
</html>