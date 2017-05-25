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
						
		<center>Dettaglio del <font color="red" ><%=codicesettato%></font> contatto: <font color="red" ><%=nome%></font> relativo all'utente: <font color="red" ><%=user%></font></center>
	

		<fieldset>
		<legend>Dettaglio contatto: nome_contatto</legend>
			<html:form action="/rubricaDettaglio">
				<html:hidden property="codice" />
				<html:hidden property="nome" />
				<html:hidden property="cognome" />
				<html:hidden property="telefono" />
				<html:hidden property="email" />
				<table>
					<tr>
						<td>Nome<html:text property="nome" disabled="true" ></html:text></td>
					</tr>
					<tr>
						<td>Cognome<html:text property="cognome" disabled="true"></html:text></td>
					</tr>
					<tr>
						<td>Telefono<html:text property="telefono" disabled="true"></html:text></td>
					</tr>
					<tr>
						<td>Email<html:text property="email" disabled="true"></html:text></td>
					</tr>
					<tr>
						<td>Data di Nascita:<html:text property="dataNascita" disabled="true"/></td>
					</tr>
					<tr>
						<td>Sesso:<html:radio property="sesso" value="M" disabled="true"/>M 
							  		 <html:radio property="sesso" value="F" disabled="true"/>F</td>
					</tr>
					<tr>
						<td>Professione:<html:select property="idProfessione" disabled="true">
												<html:option value="-1">Selezionare una professione</html:option>
													<html:optionsCollection property="listaProfessioni"
																			label="descrizione"
																			value="id" />
											</html:select>
						</td>
					</tr>
					<tr>
						<td><html:submit property="scelta" value="Modifica"></html:submit></td>
						<td><html:submit property="scelta" value="Annulla"></html:submit></td>
					</tr>
				</table>
			</html:form>
		</fieldset>	
		<html:link action="/rubricaDettaglio">Indietro</html:link>
	</body>
</html:html>