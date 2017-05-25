package it.perchiacca.rubrica.form;

import it.perchiacca.rubrica.entity.ProfessioneEntity;
import it.perchiacca.rubrica.service.PersonaService;

import org.apache.struts.validator.ValidatorForm;

import java.util.List;
import java.util.Vector;

public class InserisciPersonaForm extends ValidatorForm {
	
	private static final long serialVersionUID = 1L;
	private String nome;
	private String cognome;
	private String dataNascita;
	private String sesso;
	private String idProfessione;
	
	private List<ProfessioneEntity> listaProfessioni;
	
	public InserisciPersonaForm() {
		nome = "";
		cognome = "";
		dataNascita = "";
		sesso = "";
		idProfessione = "";
		listaProfessioni = new Vector<ProfessioneEntity>();
		
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getDataNascita() {
		return dataNascita;
	}
	public void setDataNascita(String dataNascita) {
		this.dataNascita = dataNascita;
	}
	public String getSesso() {
		return sesso;
	}
	public void setSesso(String sesso) {
		this.sesso = sesso;
	}
	public String getIdProfessione() {
		return idProfessione;
	}
	public void setIdProfessione(String idProfessione) {
		this.idProfessione = idProfessione;
	}
	
	public List<ProfessioneEntity> getListaProfessioni() {
		listaProfessioni = PersonaService.getListaProfessioni();
		return listaProfessioni;
	}
}
