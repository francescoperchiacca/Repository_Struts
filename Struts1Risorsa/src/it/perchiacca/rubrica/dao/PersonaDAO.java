package it.perchiacca.rubrica.dao;

import it.perchiacca.rubrica.connection.ConnectionManager;
import it.perchiacca.rubrica.entity.PersonaEntity;
import it.perchiacca.rubrica.entity.ProfessioneEntity;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.sql.PreparedStatement;
import java.util.List;
import java.util.Vector;

/**
 * @author Francesco Perchiacca
 * Date 28-10-2012 - V.0.1
 */

public class PersonaDAO {
	
	public static void inserisciPersona(Connection conn, PersonaEntity personaEntity) throws SQLException {
		
		String insert = "insert into Persona (nome,cognome,data_nascita,sesso,id_professione) " +
						" values (?,?,?,?,?)";
		System.out.println(insert);
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(insert);
			pstmt.setString(1, personaEntity.getNome());
			pstmt.setString(2, personaEntity.getCognome());
			pstmt.setDate(3, personaEntity.getDataNascita());
			pstmt.setString(4, personaEntity.getSesso());
			pstmt.setInt(5, personaEntity.getProfessione().getId());	
			pstmt.executeUpdate();			
		}
		catch (SQLException e) {
			throw e;			
		}
		finally {
			ConnectionManager.chiudiStatement(pstmt);
		}	
	}
	
	public static PersonaEntity getPersonaById(Connection conn, int id) throws SQLException {
		String select = "select p.id, p.nome, p.cognome, p.data_nascita, p.sesso, p.id_professione, pr.descrizione " +
						" from persona p, professione pr " +
						" where p.id_professione = pr.id " +
						" AND p.id=" + id;
		Statement stmt = null;
		ResultSet rs = null;
		
		ProfessioneEntity professione = null;
		PersonaEntity persona = null;
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(select);
			while (rs.next()) {
				String nome = rs.getString(2);
				String cognome = rs.getString("cognome");
				Date dataNascita = rs.getDate(4);
				String sesso = rs.getString(5);
				int idProfessione = rs.getInt(6);
				String descrizioneProfessione = rs.getString(7);
				
				professione = new ProfessioneEntity(idProfessione, descrizioneProfessione);
				persona = new PersonaEntity(id, nome, cognome, dataNascita, sesso, professione);				
			}	
		}
		catch (SQLException e) {
			throw e;
		}
		finally {
			ConnectionManager.chiudiResultSet(rs);
			ConnectionManager.chiudiStatement(stmt);
		}
		return persona;		
	}
	
	public static List<PersonaEntity> getListaPersone(Connection conn) throws SQLException {
		String select = "select p.id, p.nome, p.cognome, p.data_nascita, p.sesso, p.id_professione, pr.descrizione " +
						" from persona p, professione pr " +
						" where p.id_professione = pr.id";
		Statement stmt = null;
		ResultSet rs = null;
		
		ProfessioneEntity professione = null;
		PersonaEntity persona = null;
		List<PersonaEntity> lista = new Vector<PersonaEntity>();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(select);
			while (rs.next()) {
				int id = rs.getInt(1);
				String nome = rs.getString(2);
				String cognome = rs.getString("cognome");
				Date dataNascita = rs.getDate(4);
				String sesso = rs.getString(5);
				int idProfessione = rs.getInt(6);
				String descrizioneProfessione = rs.getString(7);
				
				professione = new ProfessioneEntity(idProfessione, descrizioneProfessione);
				persona = new PersonaEntity(id, nome, cognome, dataNascita, sesso, professione);	
				lista.add(persona);
			}		
		}
		catch (SQLException e) {
			throw e;
		}
		finally {
			ConnectionManager.chiudiResultSet(rs);
			ConnectionManager.chiudiStatement(stmt);
		}
		return lista;		
	}
	
	public static List<ProfessioneEntity> getListaProfessioni(Connection conn) throws SQLException {
		String select = "select id,descrizione from professione order by descrizione asc";
		
		Statement stmt = null;
		ResultSet rs = null;
		
		ProfessioneEntity professione = null;
		List<ProfessioneEntity> lista = new Vector<ProfessioneEntity>();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(select);
			while (rs.next()) {
				int idProfessione = rs.getInt("id");
				String descrizioneProfessione = rs.getString("descrizione");
				
				professione = new ProfessioneEntity(idProfessione, descrizioneProfessione);
				lista.add(professione);
			}		
		}
		catch (SQLException e) {
			throw e;
		}
		finally {
			ConnectionManager.chiudiResultSet(rs);
			ConnectionManager.chiudiStatement(stmt);
		}
		return lista;
	}
	
	
	

}
