<!DOCTYPE html>
<html xmlns:h="http://java.sun.com/jsf/html"
	xmlns:ui="http://java.sun.com/jsf/facelets">
<h:head>
	<meta charset="utf-8"></meta>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
	<meta name="viewport" content="width=device-width, initial-scale=1"></meta>

	<link rel="stylesheet" href="./resources/css/bootstrap.min.css"></link>

	<link rel="stylesheet" href="./resources/css/theme.css"></link>

	<title></title>
</h:head>
<h:body>
	<div class="container">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">MME-Commerce</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><h:outputLink  value="index.jsp"> Home </h:outputLink></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">

						<h:panelGroup rendered="#{sessioneController.nessunoLoggato()}">
							<a class="btn btn-lg btn-primary" href="login.jsp"><span
								class="glyphicon glyphicon-user"></span>Login</a>
						</h:panelGroup>

						<h:panelGroup rendered="#{sessioneController.utenteLoggato()}">
							<h:form>
								<h:commandLink value="Log Out"
									action="#{aScommerceController.logout}"></h:commandLink>
							</h:form>

						</h:panelGroup>

					</ul>

				</div>
			</div>
		</nav>
		<div class="body">
			<div class="jumbotron">
						<ui:insert name="jumbotron-title">
						</ui:insert>
					<p>
						<ui:insert name="jumbotron-text">
						</ui:insert>
					</p>
			</div>

			<div id="sfondo_trasparente">
				<ui:insert name="content">
				</ui:insert>
			</div>
		</div>

	</div>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="./resources/js/jquery.action.js"></script>
	<script src="./resources/js/docs.min.js"></script>

</h:body>
</html>