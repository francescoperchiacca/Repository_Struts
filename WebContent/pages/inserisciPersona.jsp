<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inserisci Persona</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>


<div class="centrato">
	<html:form method="post" action="inserisciPersona">
		
		<fieldset>
		<legend>Generazione Codice fiscale</legend>
		<table class="table">
			<tr>
				<td><p>Nome: <html:text property="nome" /></p></td>
			</tr>	
			<tr>
				<td><p>Cognome: <html:text property="cognome" /></p></td>
			</tr>
			<tr>
				<td><p>Data di Nascita: <html:text property="dataNascita" /></p></td>
			</tr>
			<tr>
				<td><p>Sesso:     <html:radio property="sesso" value="M" />M 
								  <html:radio property="sesso" value="F" />F</p></td>
			</tr>
			<tr>
				<td>
					<p>Professione: <html:select property="idProfessione">
										<html:optionsCollection property="listaProfessioni" label="descrizione" value="id" />
									</html:select></p>
				</td>
			</tr>
			<tr>
				<td><p><html:submit property="inserisci" value="Inserisci" /> </p></td>
			</tr>
		</table>
		</fieldset>
	</html:form>
</div>
<font color="red">
		<html:errors/>
</font>

</body>
</html>