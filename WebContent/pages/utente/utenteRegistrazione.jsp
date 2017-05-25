<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html>
<html:base/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Pagina di Registrazione</title>
		<link rel="stylesheet" type="text/css" href="../css/style.css">
	</head>
	<body>
		<div class="centrato">
		Pagina di REGISTRAZIONE
			<html:form action="/registrazione">
			<fieldset>
				<legend>Form di Registrazione</legend>
				<table class="table">
					<tr>
						<td>Nome</td>
						<td><html:text name="utenteForm" property="nome"></html:text></td>
	<!-- 				<td><html:errors property="nome"/></td>					-->	
					</tr>
					<tr>
						<td>Scegli Username</td>
						<td><html:text name="utenteForm" property="username"></html:text></td>
	<!--  				<td><html:errors property="username"/></td>     		-->	
					</tr>
					<tr>
						<td>Scegli Password</td>
						<td><html:text name="utenteForm" property="password"></html:text></td>
	<!-- 				<td><html:errors property="password"/></td>				-->	
					</tr>
					<tr>
						<td>Conferma Password</td>
						<td><html:text name="utenteForm" property="confermapassword"></html:text></td>
	<!--				<td><html:errors property="confermapassword"/></td>		-->	
					</tr>
					<tr>
						<td><html:submit property="scelta" value="Registrati"></html:submit></td>
						<td><html:submit property="scelta" value="Svuota"></html:submit></td>
					</tr>
				</table>
			</fieldset>
			</html:form>	
		</div>
		<font color="red">
		<html:errors/>
		</font>
	
			 <html:link action="/registrazione">Indietro</html:link>
	
	</body>
		
</html:html>