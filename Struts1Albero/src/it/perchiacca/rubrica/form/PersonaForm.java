package it.perchiacca.rubrica.form;

import org.apache.struts.validator.ValidatorForm;

public class PersonaForm extends ValidatorForm  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String scelta;
	
	public String getScelta() {
		return scelta;
	}
	public void setScelta(String scelta) {
		this.scelta = scelta;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
