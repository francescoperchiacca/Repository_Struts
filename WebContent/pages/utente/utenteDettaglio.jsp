<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<html:html>
<html:base/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%HttpSession sessione = request.getSession();
		 
		  String user = (String)sessione.getAttribute("user");
		  Integer codicesettato = (Integer)sessione.getAttribute("codicesettato");
		  String nome = (String)sessione.getAttribute("nome");%>
						
		<center>Dettaglio del <font color="red" ><%=codicesettato %></font> utente: <font color="red" ><%=nome %></font> </center>
	

		<fieldset>
		<legend>Dettaglio dell'utente: <font color="red" ><%=nome %></font></legend>
			<html:form action="/utenteDettaglio">
				<html:hidden property="codice" />
				<html:hidden property="nome" />
				<html:hidden property="username" />
				<html:hidden property="password" />
				
				<table>
					<tr>
						<td>Nome</td><td><html:text property="nome" disabled="true" ></html:text></td>
					</tr>
					<tr>
						<td>Username</td><td><html:text property="username" disabled="true"></html:text></td>
					</tr>
					<tr>
						<td>Password</td><td><html:text property="password" disabled="true"></html:text></td>
					</tr>
					<tr>
						<td><html:submit property="scelta" value="Modifica"></html:submit></td>
						<td><html:submit property="scelta" value="Annulla"></html:submit></td>
					</tr>
				</table>
			</html:form>
		</fieldset>	
		<html:link action="/utenteDettaglio">Indietro</html:link>
	</body>
</html:html>