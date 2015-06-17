<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./risorse/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="./risorse/css/Tema.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cliente:</title>
</head>
<body>
	<f:view>
		<div class="sfondo_trasparente" style="float: left; width: 40%">
			<legend>Dettagli del cliente:</legend>
			<div style="width: 150px; float: left;">
				<div>
					<label for="nome">Nome</label>
					<div>${ordineController.ordineCorrente.customer.nome}</div>
				</div>
				<div>
					<label for="cognome">Cognome</label>
					<div>${ordineController.ordineCorrente.customer.cognome}</div>
				</div>
				<div>
					<label for="indirizzo">Indirizzo</label>
					<br>
				</div>
				<div>
					<label for="via">via:</label>
					<div>${ordineController.ordineCorrente.customer.indirizzo.via}</div>
				</div>
				<div>
					<label for="citta">citta':</label>
					<div>${ordineController.ordineCorrente.customer.indirizzo.citta}</div>
				</div>
				<div>
					<label for="provincia">provincia:</label>
					<div>${ordineController.ordineCorrente.customer.indirizzo.stato}</div>
				</div>
				<div>
					<label for="cap">cap:</label>
					<div>${ordineController.ordineCorrente.customer.indirizzo.cap}</div>
				</div>
				<br /> <a href='adminIndex.jsp'>Torna alla home</a>
			</div>
		</div>
		<%-- <h:panelGroup>
		<div>Nome: ${adminController.customer.nome}</div>
		<div>Cognome: ${adminController.customer.cognome}</div>
		<div>Email: ${adminController.customer.email}</div>
		<div>Password: ${adminController.customer.password}</div>
		</h:panelGroup> --%>
	</f:view>
</body>
</html>