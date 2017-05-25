<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ page import="java.util.Date,java.text.DateFormat,java.util.Locale"%>

<html:html>
<html:base/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Pagina di Accesso</title>
		<link rel="stylesheet" type="text/css" href="../css/style.css">
	</head>
	<body>
	
	<%Date data = new Date();
			DateFormat df = DateFormat.getDateInstance(DateFormat.FULL,Locale.ITALIAN);%>	
	
	
	
	
	<div class="centrato"> 

		<html:form action="/login">
			<fieldset>
			<legend>Form di Login</legend>
					<table class="pls">
					
						<tr>
							<td>Username</td>
							<td><html:text property="username"></html:text></td>
							</tr>
						<tr>
							<td>Password</td>
							<td><html:password property="password"></html:password></td>
						</tr>
						<tr>
							<td><html:submit property="scelta" value="Login"></html:submit></td>
							<td><html:submit property="scelta" value="Svuota"></html:submit></td>
						</tr>
					</table>
			</fieldset>
		</html:form>
		<html:link action="/login">Registrati</html:link>
		
		<p><html:link href="/pages/login.jsp">Recupera credenziali di accesso</html:link></p>
		   <html:link action="/rubricaGestione">Recupero credenziali</html:link>
		</div>
		
		<br/>
		<font color="red">
		<html:errors/>
		</font>
		
	</body>
</html:html>