package it.perchiacca.rubrica.entity;

public class ProfessioneEntity {
	
	private int id;
	private String descrizione;
	
	public ProfessioneEntity(int id, String descrizione) {
		this.id = id;
		this.descrizione = descrizione;
	}
	
	public ProfessioneEntity(int id) {
		this.id = id;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	

}
