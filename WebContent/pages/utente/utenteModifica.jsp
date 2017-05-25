<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html>
<html:base/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Pagina di modifica utente</title>
	</head>
	<body>
		<%HttpSession sessione = request.getSession();
		  String user = (String)sessione.getAttribute("user");%>
		 
		<center>Pagina di MODIFICA dell'utente:  <font color="red" ><%=user%></font></center>
		<fieldset>
		<legend>Modifica contatto: nome_contatto</legend>
			<html:form action="/utenteModifica">
				<table>
					<tr>
						<td>nome</td>
						<td><html:text property="nome"></html:text></td>
					</tr>
					<tr>
						<td>username</td>
						<td><html:text property="username" disabled="true"></html:text></td>
					</tr>
					<tr>
						<td>password</td>
						<td><html:text property="password"></html:text></td>
					</tr>
					
					<tr>
						<td><html:submit property="scelta" value="Salva"></html:submit></td>
						<td><html:submit property="scelta" value="Ripristina campi"></html:submit></td>
					</tr>
				</table>
			</html:form>
			<font color="red">
				<html:errors/>
			</font>
		</fieldset>	
		<html:link action="/utenteModifica">Indietro</html:link>
	</body>
</html:html>