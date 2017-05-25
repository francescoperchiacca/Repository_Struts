<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html>
<html:base/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>inserimento nuovo Utente</title>
		<link rel="stylesheet" type="text/css" href="../css/style.css">
	</head>
	<body>
	
		<script type="text/javascript">

			function svuotaCampi() {
				form = document.forms[0];
				form.nome.value = "";
				form.password.value = "";
				form.username.value = "";
				form.confermapassword.value = "";
				form.idRuolo.value = "";

				return false;
			}
		
		</script>
		
		<div class="centrato">
		Pagina di REGISTRAZIONE nuovo utente per Admin
			<html:form action="/utenteNuovo">
			<fieldset>
				<legend>Form di Registrazione</legend>
				<table class="table">
<%--					<tr>
						<td>
							<p>Gruppo di appartenenza: <html:select property="idGruppo">
													    <html:option value="-1">Selezionare un gruppo</html:option>
														 <html:optionsCollection property ="listaGruppi"
																			     label="descrizione"
																			     value="id" />
												       </html:select>
							</p>
						</td>
						</tr>
 --%>					<tr>
						<td>Nome</td>
						<td><html:text property="nome"></html:text></td>
	<%-- 				<td><html:errors property="nome"/></td>					--%>	
					</tr>
					<tr>
						<td>Scegli Username</td>
						<td><html:text property="username"></html:text></td>
	<%-- 				<td><html:errors property="username"/></td>     		--%>	
					</tr>
					<tr>
						<td>Scegli Password</td>
						<td><html:text property="password"></html:text></td>
	<%-- 				<td><html:errors property="password"/></td>				--%>	
					</tr>
					<tr>
						<td>Conferma Password</td>
						<td><html:text property="confermapassword"></html:text></td>
	<%--				<td><html:errors property="confermapassword"/></td>		--%>	
					</tr>
					<tr>
						<td>
							<p>Ruolo: <html:select property="idRuolo">
										<html:option value="-1"> - Selezionare ruolo - </html:option>
										<html:optionsCollection property="listaRuoli"
																label="descRuolo"
																value="idRuolo" />
									  </html:select></p>
						</td>
					</tr>
					<tr>
						<td><html:submit property="scelta" value="Registrati"></html:submit></td>
						<td><html:submit property="scelta" value="Resetta" onclick="return svuotaCampi();"></html:submit></td>
					</tr>
				</table>
				<html:hidden property="page" value="2"/>
			</fieldset>
			</html:form>	
		</div>
		<font color="red">
		<html:errors/>
		</font>
	
			 <html:link action="/utenteNuovo?scelta=indietro&amp;page=0">Torna indietro</html:link>
	
	</body>
		
</html:html>