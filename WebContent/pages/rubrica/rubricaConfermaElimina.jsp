<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<html:html>
<html:base/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Ciao</title>
	</head>
	<body>
		<%HttpSession sessione = request.getSession();
		  String user = (String)sessione.getAttribute("user");%>
		 
		<center>Pagina di conferma eliminazione dell'utente:  <font color="red" ><%=user%></font></center>
	
		<html:form action="/rubricaConfermaElimina">
		<fieldset>
		<!-- <input type="hidden" name="codice"/> -->
		<html:hidden property="codice"/>
			<legend>Conferma Eliminazione contatto: nome_contatto</legend>
			<center>Attenzione!!! Stai per eliminare il contatto: nome_contatto<br></br>
					Sei sicuro di voler procedere?
				<table>
					<tr>
						
						<td><html:submit property="scelta" value="Si"></html:submit></td>
						<td><html:submit property="scelta" value="No"></html:submit></td>
					</tr>
				</table>
			</center>
		</fieldset>
		</html:form>	
		<html:link action="/rubricaConfermaElimina">Indietro</html:link>
	</body>
</html:html>