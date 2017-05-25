<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html>
<html:base/>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Pagina di Nuovo inserimento</title>
		<link rel="stylesheet" type="text/css" href="../css/style.css">
	</head>
	<body>
	
		<script type="text/javascript">

			function svuotaCampi() {
				form = document.forms[0];

				form.nome.value = "";
				form.cognome.value = "";
				form.telefono.value = "";
				form.email.value = "";
				form.dataNascita = "";
				form.sesso = "";
				form.idProfessione = "";

				return false;
			}
		
		</script>
	
	<%HttpSession sessione = request.getSession();
		  String user = (String)sessione.getAttribute("user");
		  %>
	
	<%HttpSession sessione1 = request.getSession();
		  String contatto = (String)sessione.getAttribute("contatto");%>
		 
		<center>Pagina di inserimento del contatto per l'utente:  <font color="red" ><%=user%></font></center>
		<div class="centrato">
			<fieldset>
			<legend>Nuovo contatto</legend>
				<html:form action="/rubricaNuovo">
					<table>
						<tr>
							<td>Nome<html:text name="rubricaNuovoForm" property="nome"></html:text></td>
						</tr>
						<tr>
							<td>Cognome<html:text name="rubricaNuovoForm" property="cognome"></html:text></td>
						</tr>
						<tr>
							<td>Telefono<html:text name="rubricaNuovoForm" property="telefono"></html:text></td>
						</tr>
						<tr>
							<td>Email<html:text name="rubricaNuovoForm" property="email"></html:text></td>
						</tr>
						<tr>
							<td><p>Data di Nascita:<html:text property="dataNascita" /></p></td>
						</tr>
						<tr>
							<td><p>Sesso:<html:radio property="sesso" value="M" />M 
								  		 <html:radio property="sesso" value="F" />F</p></td>
						</tr>
						<tr>
							<td>
								<p>Professione: <html:select property="idProfessione">
												<html:option value="-1">Selezionare una professione</html:option>
													<html:optionsCollection property="listaProfessioni"
																			label="descrizione"
																			value="id" />
												</html:select></p>
							</td>
						</tr>
						<tr>
							<td><html:submit property="scelta" value="Salva"></html:submit></td>
							<td><html:submit property="scelta" value="Svuota" onclick="return svuotaCampi();"></html:submit></td>
						</tr>
					</table>
					
					<html:hidden property="page" value="2"/>
				</html:form>
				<%--<html:hidden property="page" value="2"/>--%>	
			</fieldset>
			
		</div>
		<font color="red">
		<html:errors/>
		</font>
		<html:link action="/rubricaNuovo?scelta=indietro&amp;page=0">Torna indietro</html:link>
	</body>
</html:html>