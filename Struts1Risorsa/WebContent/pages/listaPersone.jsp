<%@ taglib uri="http://struts.apache.org/tags-bean"  prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html"  prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Persone</title>
</head>
<body>

<logic:notPresent name="listaPersone">
	<logic:forward name="listaPersone"/>
</logic:notPresent>

<table border="1">
<tr>
	<td>Nome</td>
	<td>Cognome</td>
	<td>Data nascita</td>
	<td>Sesso</td>
	<td>Professione</td>
	<td>Lista opzioni</td>
</tr>
<logic:iterate id="persona" name="listaPersone">

<tr>
	<td><bean:write name="persona" property="nome"/></td>
	<td><bean:write name="persona" property="cognome" /></td>
	<td><bean:write name="persona" property="dataNascita"/></td>
	<td><bean:write name="persona" property="sesso" /></td>
	<td><bean:write name="persona" property="professione.descrizione" /></td>
	<td>
		<html:link action="dettaglioPersona" paramId="id" paramName="persona" paramProperty="id">Dettaglia</html:link>
		<html:link action="modificaPersona" paramId="id" paramName="persona" paramProperty="id">Modifica</html:link>
		<html:link action="eliminaPersona" paramId="id" paramName="persona" paramProperty="id">Elimina</html:link> 
	</td>
</tr>
</logic:iterate>
</table>
</body>
</html>