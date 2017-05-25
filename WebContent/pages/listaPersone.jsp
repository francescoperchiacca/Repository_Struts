<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<logic:iterate id="persona" name="listaPersone">

	<p><bean:write name="persona" property="nome" /></p>
	<p><bean:write name="persona" property="cognome" /></p>
	<p><bean:write name="persona" property="dataNascita"/></p>
	<p><bean:write name="persona" property="sesso" /></p>
	<p><bean:write name="persona" property="professione.descrizione" /></p>
	<p><html:link action="dettaglioPersona" paramId="id" paramName="persona" paramProperty="id">Visualizza Dettaglio</html:link> </p>
	<p><html:link action="modificaPersona" paramId="id" paramName="persona" paramProperty="id">Modifica</html:link> </p>
	<p><html:link action="eliminaPersona" paramId="id" paramName="persona" paramProperty="id">Visualizza Dettaglio</html:link> </p>
	<br /><br />

</logic:iterate>






</body>
</html>