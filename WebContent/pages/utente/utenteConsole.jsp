<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<html:html>
<html:base/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Pagina di Accesso</title>
		<link rel="stylesheet" type="text/css" href="../css/style.css">
	</head>
	<body>
	
	<% 	String user = session.getAttribute("user").toString();	
		int valore;
		valore=Integer.parseInt(session.getAttribute("valore").toString()); %>
	
		<div class="centrato">

		Pagina di Controllo Utenti per <font color="red" > <%=user %>  </font>
			

			<html:form action="/utenteConsole">
				<fieldset>
					<legend>Gestione Utenti Registrati</legend>
					<table>
						<tr>
							<td>Cerca per nome</td>
							<td><html:text property="nome"></html:text></td>
						</tr>
						<tr>
							<td><html:submit property="scelta" value="Cerca"></html:submit></td>
							<td><html:submit property="scelta" value="Svuota"></html:submit></td>
							<td><html:submit property="scelta" value="Nuovo"></html:submit></td>
						</tr>
					</table>
				</fieldset>	
			</html:form>
			
			
			
	<logic:notEqual value="0" name="valore">
		<html:form action="/utenteConsole">
		<fieldset>
			<legend>Risultati di ricerca</legend>
			<table align="center" border="1">
			
			
			<logic:empty   name="collectionRegistrati2">
			<h4>persona non presente </h4>
			</logic:empty>
		
				<logic:notEmpty name ="collectionRegistrati2">
					<tr>
									<td><b>Id_Utente:</b></td>
									<td><b>Nome:</b></td>
									<td><b>Username:</b></td>
									<td><b>Password:</b></td>
									<td><b>ConfPwd:</b></td>
									<td><b>id_ruolo:</b></td>
									<td><b>Desc_ruolo:</b></td>
									<td><b>Seleziona:</b></td>
									<td><b>Setta RuoloSTA<html:submit property="scelta" value="Setta"></html:submit></b></td>
									<td><b>Setta RuoloDINA<html:submit property="scelta" value="Setta"></html:submit></b></td>
									
									
					</tr>
							<logic:iterate id="Utente" name="collectionRegistrati2">
								<tr>
									<td><bean:write name="Utente" property="id"/></td>
									<td><bean:write name="Utente" property="nome"/></td>
									<td><bean:write name="Utente" property="username"/></td>
						 			<td><bean:write name="Utente" property="password"/></td>
						 			<td><bean:write name="Utente" property="confermapassword"/></td>
						 			<td><bean:write name="Utente" property="idRuolo"/></td>
						 			<td><bean:write name="Utente" property="ruolo.descRuolo"/></td>
				 					<td>
									<html:radio idName="Utente" property="codice" value="id" ></html:radio>
									</td>

				  
									<td>
										<select>
										
											<option>- Seleziona - </option>
												<logic:equal name="Utente" property="idRuolo" value="1">
													<option value="1" selected="selected">Utente</option>
												</logic:equal>
												<logic:notEqual name="Utente" property="idRuolo" value="1">
													<option value="1">Utente</option>
												</logic:notEqual>
												<logic:equal name="Utente" property="idRuolo" value="2">
													<option value="2" selected="selected">Utente Privileggiato</option>
												</logic:equal>
												<logic:notEqual name="Utente" property="idRuolo" value="2">
													<option value="2">Utente Privileggiato</option>
												</logic:notEqual>
												<logic:equal name="Utente" property="idRuolo" value="3">
													<option value="3" selected="selected">Amministratore</option>
												</logic:equal>
												<logic:notEqual name="Utente" property="idRuolo" value="3">
													<option value="3">Amministratore</option>
												</logic:notEqual>
												<logic:equal name="Utente" property="idRuolo" value="4">
													<option value="4" selected="selected">mministratore Privileggiato</option>
												</logic:equal>
												<logic:notEqual name="Utente" property="idRuolo" value="4">
													<option value="4">mministratore Privileggiato</option>
												</logic:notEqual>
										
										</select>
									</td>
									<td>
										<p>Ruolo: <html:select name="Utente" property="idRuolo">
												<html:option value="-1"> - Selezionare ruolo - </html:option>
													<html:optionsCollection property="listaRuoli"
																			label="descRuolo"
																			value="idRuolo" />
												</html:select></p>
									</td>
								</tr>
							</logic:iterate>
					<html:submit property="scelta" value="Dettaglio"></html:submit>
					<html:submit property="scelta" value="Modifica"></html:submit>
					<html:submit property="scelta" value="Elimina"></html:submit>
				</logic:notEmpty>
			</table>
		</fieldset>
		</html:form>
	</logic:notEqual>
	


			<html:link action="/utenteConsole">Vai a mia Rubrica!!!</html:link>
			<p><html:link action="/exitAction">Exit</html:link></p>
			
			
			
		</div>

	</body>
</html:html>

