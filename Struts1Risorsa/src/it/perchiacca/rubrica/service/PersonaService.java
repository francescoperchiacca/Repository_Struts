package it.perchiacca.rubrica.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import it.perchiacca.rubrica.connection.ConnectionManager;
import it.perchiacca.rubrica.dao.PersonaDAO;
import it.perchiacca.rubrica.entity.PersonaEntity;
import it.perchiacca.rubrica.entity.ProfessioneEntity;

public class PersonaService {
	
	public static void inserisciPersona(PersonaEntity personaEntity) throws SQLException {
		
		Connection conn = null;
		
		try {
			conn = ConnectionManager.getConnection();			
			PersonaDAO.inserisciPersona(conn, personaEntity);
			ConnectionManager.commit(conn);
		}
		catch (SQLException e) {
			ConnectionManager.rollback(conn);
			throw e;
		}
		finally {
			ConnectionManager.chiudiConnection(conn);
		}		
	}
	
	public static List<ProfessioneEntity> getListaProfessioni() {
		Connection conn = null;
		List<ProfessioneEntity> lista = null;
		try {
			conn = ConnectionManager.getConnection();			
			lista = PersonaDAO.getListaProfessioni(conn);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			ConnectionManager.chiudiConnection(conn);
		}
		return lista;
	}
	
	public static List<PersonaEntity> getListaPersone() {
		Connection conn = null;
		List<PersonaEntity> lista = null;
		try {
			conn = ConnectionManager.getConnection();			
			lista = PersonaDAO.getListaPersone(conn);
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			ConnectionManager.chiudiConnection(conn);
		}
		return lista;
	}

}
