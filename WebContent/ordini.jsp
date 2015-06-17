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
<title>Tuoi Ordini</title>
</head>
<body>
	<f:view>
		<h:form>
			<div class="sfondo_trasparente">
				<div class="page-header" style="margin-top: 0px">
					<h1>Ecco la lista dei tuoi ordini:</h1>
				</div>
				<div>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Codice Identificativo</th>
								<th>Data di Creazione</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<c:forEach var="ordine"
									items="#{ordineController.getAllOrders()}">
									<tr>
										<th><h:form>
												<h:commandLink action="#{ordineController.findOrder}"
													value="#{ordine.id}">
													<f:param name="id" value="#{ordine.id}" />
												</h:commandLink>
											</h:form></th>
										<th>${ordine.dataCreazione}</th>
								</c:forEach>
							</tr>
						</tbody>
					</table>
				</div>
				<h:form>
					<h:outputLink value="customerIndex.jsp"> Torna alla home </h:outputLink>
				</h:form>
			</div>
		</h:form>
	</f:view>
</body>
</html>



<%-- <table>
				<c:forEach var="ordine" items="#{ordineController.getAllOrders()}">
					<tr>
						<th>Codice di riferimento</th>
						<th>Data Creazione</th>
					</tr>
					<tr>
						<td><h:commandLink action="#{ordineController.findOrder}"
								value="#{ordine.id}">
								<f:param name="id" value="#{ordine.id}"></f:param>
							</h:commandLink></td>
						<td>${ordine.dataCreazione}</td>
					</tr>

				</c:forEach>
			</table>
 --%>
