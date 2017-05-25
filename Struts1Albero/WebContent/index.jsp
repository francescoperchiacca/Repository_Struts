<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html >
	<head>
		<title>Risorse Umane</title>
	</head>
	<body>		
		<html:link href="pages/listaPersone.jsp">Visualizza tutto</html:link> <br></br>
	    <html:link action="listaPersone.do">Visualizza tutto</html:link> <br></br>
		<div class="centrato"> 
		<html:form action="/listaPersone.do">
			<fieldset>
			<legend>Form di Login</legend>
					<table class="pls">
					
						<tr>
							<td>Username</td>
							<td><html:text property="username" ></html:text></td>
							</tr>
						<tr>
							<td>Password</td>
							<td><html:password property="password"></html:password></td>
						</tr>
						<tr>
							<td><html:submit property="scelta" value="Login"></html:submit></td>
							<td><html:submit property="scelta" value="Svuota"></html:submit></td>
						</tr>
					</table>
			</fieldset>
		</html:form>
		<font color="red">
					<html:errors/>
					</font>
		
		</div>
		
	</body>
</html:html>
