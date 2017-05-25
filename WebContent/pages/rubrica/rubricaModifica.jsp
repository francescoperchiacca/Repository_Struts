<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html>
<html:base/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Pagina di modifica contatto</title>
	</head>
	<body>
		<%HttpSession sessione = request.getSession();
		  String user = (String)sessione.getAttribute("user");%>
		 
		<center>Pagina di MODIFICA dell'utente:  <font color="red" ><%=user%></font></center>
		<fieldset>
		<legend>Modifica contatto: nome_contatto</legend>
			<html:form action="/rubricaModifica">
				<table>
					<tr>
						<td>nome<html:text property="nome"></html:text></td>
					</tr>
					<tr>
						<td>cognome<html:text property="cognome"></html:text></td>
					</tr>
					<tr>
						<td>telefono<html:text property="telefono"></html:text></td>
					</tr>
					<tr>
						<td>email<html:text property="email"></html:text></td>
					</tr>
					<tr>
						<td>Data di Nascita:<html:text property="dataNascita"  /></td>
					</tr>
					<tr>
						<td>Sesso:<html:radio property="sesso" value="M" />M 
							  		 <html:radio property="sesso" value="F" />F</td>
					</tr>
					<tr>
						<td>Professione:<html:select property="idProfessione" >
												<html:option value="-1">Selezionare una professione</html:option>
													<html:optionsCollection property="listaProfessioni"
																			label="descrizione"
																			value="id" />
											</html:select>
						</td>
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
		<html:link action="/rubricaModifica">Indietro</html:link>
	</body>
</html:html>