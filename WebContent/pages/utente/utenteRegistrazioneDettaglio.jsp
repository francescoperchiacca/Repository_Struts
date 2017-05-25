<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<html:html>
<html:base/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Pagina di Riepilogo</title>
		<link rel="stylesheet" type="text/css" href="../css/style.css">
	</head>
	<body>
	<div class="centrato">
	Pagina di Riepiogo
		<html:form action="/registrazioneDettaglio">
		<fieldset>
			<legend>Dettaglio di Registrazione</legend>
			Registrazione effettuata con successo!!! 
			Puoi utilizzare le credenziali scelte per accedere al servizio.
			
			<table class="table">
				<!-- uso logic iterate per visualizzare qui i dati inseriti nel form di registrazione -->
				<logic:iterate id="RegistrazioneForm" name="collectionRegistrati">
					<tr>
						<td><b>Nome:</b></td>
						<td><bean:write name="RegistrazioneForm" property="nome"/></td>
					</tr>
					<tr>
						<td><b>Username:</b></td>
						<td><bean:write name="RegistrazioneForm" property="username"/></td>
					</tr>
					<tr>
						<td><b>Password:</b></td>
						<td><bean:write name="RegistrazioneForm" property="password"/></td>
					</tr>
				</logic:iterate>
				</table>
				Clicca sul tasto <b>"ok"</b> per continuare.<br></br>
				<html:submit property="scelta" value="OK"></html:submit>
							
		</fieldset>
		</html:form>	
	</div>	
	
	</body>
</html:html>




