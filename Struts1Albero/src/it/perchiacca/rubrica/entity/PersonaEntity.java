package it.perchiacca.rubrica.entity;

import java.sql.Date;

public class PersonaEntity {
	
	private int id;
	private String nome;
	private String cognome;
	private Date dataNascita;
	private String sesso;
	private ProfessioneEntity professione;
		
	public PersonaEntity(int id, String nome, String cognome, Date dataNascita,	String sesso, ProfessioneEntity professione) {		
		this.id = id;
		this.nome = nome;
		this.cognome = cognome;
		this.dataNascita = dataNascita;
		this.sesso = sesso;
		this.professione = professione;
	}
	
	public PersonaEntity(String nome, String cognome, Date dataNascita,	String sesso, ProfessioneEntity professione) {		
		this.nome = nome;
		this.cognome = cognome;
		this.dataNascita = dataNascita;
		this.sesso = sesso;
		this.professione = professione;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public Date getDataNascita() {
		return dataNascita;
	}
	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}
	public String getSesso() {
		return sesso;
	}
	public void setSesso(String sesso) {
		this.sesso = sesso;
	}
	public ProfessioneEntity getProfessione() {
		return professione;
	}
	public void setProfessione(ProfessioneEntity professione) {
		this.professione = professione;
	}
	
	
	
	

}
