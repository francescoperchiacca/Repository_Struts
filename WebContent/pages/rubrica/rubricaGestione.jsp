<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>


<html:html>
<html:base/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%HttpSession sessione = request.getSession();
		String user = (String)sessione.getAttribute("user");%>
		Benvenuto <font color="red" ><%=user%></font>. Sei nella tua rubrica personale.
	
		<html:form action="/rubricaGestione">
			<html:link action="/rubricaGestione?scelta=dettaglioCredenziali&amp;page=0">Credenziali d'accesso</html:link>
			<html:link action="/rubricaGestione">Exit</html:link>
						
    <fieldset>
		<legend>Cerca contatto</legend>
			<table>
				<tr>
					<td>Inserisci nome: </td>
					<td><html:text property="nome"></html:text></td>
				</tr>
				<tr>
					<td><html:submit property="scelta" value="Cerca"></html:submit></td>
					
					<td><html:submit property="scelta" value="Svuota"></html:submit></td>
					<td><html:submit property="scelta" value="Nuovo"></html:submit></td>
				</tr>		
			</table>
		</fieldset>		
		
		<fieldset>
		<legend>Risultati di ricerca</legend>
		
				
<bean:define id="coll" name="collectionContatti2" scope="session" toScope="request" />

	<display:table  name="coll" sort="list" pagesize="2" export="true" uid="contatto" cellpadding="4" cellspacing="4">
		<display:column property="id" title="Id" />
		<display:column property="nome" title="Nome" group="1" sortable="true" />
		<display:column property="cognome" title="Cognome" group="2" sortable="true" href="http://www.google.it" />
		<display:column property="telefono" title="Telefono"/>
		
		<display:column property="email" title="Email" autolink="true" media="html"/>
		<display:column property="email" title="Email" media="pdf xml"/>
		
		<display:column property="dataNascita" title="DataNascita"/>
		<display:column property="sesso" title="Sesso"/>
		<display:column property="professione.descrizione" title="IdProfessione" />
		
		<display:column title="Seleziona contatto" media="html">
			<html:radio idName="contatto" property="codice" value="id" ></html:radio>2
		</display:column>
	</display:table>
	<html:submit property="scelta" value="Dettaglio"></html:submit>
	<html:submit property="scelta" value="Modifica"></html:submit>
	<html:submit property="scelta" value="Elimina"></html:submit>
	
	
	<!-- INIZIO SECONDA TABELLA (SENZA DISPLAY TABLE) -->
	<table align="center" border="1">	
	<logic:empty   name="collectionContatti2">
		<h4><font color="red">La Lista è vuota!!!</font></h4>
		<td><html:submit property="scelta" value="Carica_Lista"></html:submit></td>
	</logic:empty>
	
		<logic:notEmpty name ="collectionContatti2">
			<tr>
							<td><b>idContatto:</b></td>
							<td><b>Nome:</b></td>
							<td><b>Cognome:</b></td>
							<td><b>Telefono:</b></td>
							<td><b>Email:</b></td>
							<td><b>Data di nascita:</b></td>
							<td><b>Sesso:</b></td>
							<td><b>Professione:</b></td>
						
							<td><b>Seleziona:</b></td>
			</tr>
			<logic:iterate id="RubricaEntity" name="collectionContatti2">
				<tr>
					<td><bean:write name="RubricaEntity" property="id"/></td>
					<td><bean:write name="RubricaEntity" property="nome"/></td>
					<td><bean:write name="RubricaEntity" property="cognome"/></td>
					<td><bean:write name="RubricaEntity" property="telefono"/></td>
					<td><bean:write name="RubricaEntity" property="email"/></td>
					<td><bean:write name="RubricaEntity" property="dataNascita"/></td>
					<td><bean:write name="RubricaEntity" property="sesso"/></td>
	<!-- 			<td><bean:write name="RubricaEntity" property="idProfessione"/></td>  -->
					<td><bean:write name="RubricaEntity" property="professione.descrizione"/></td>
					<td>
						<html:radio idName="RubricaEntity" property="codice" value="id" ></html:radio>
					</td>
				</tr>
			</logic:iterate>
			<html:submit property="scelta" value="Dettaglio"></html:submit>
			<html:submit property="scelta" value="Modifica"></html:submit>
			<html:submit property="scelta" value="Elimina"></html:submit>
				
		</logic:notEmpty>
	</table>
					..		
		</fieldset>	
<!--           <html:link action="/gestioneUtenti">Gestione Registrati</html:link>
	-->        
				
		<html:hidden property="page" value="2"/>	
		</html:form>
			<font color="red">
		<html:errors/>
		</font>	
	</body>
</html:html>

	

		
		

