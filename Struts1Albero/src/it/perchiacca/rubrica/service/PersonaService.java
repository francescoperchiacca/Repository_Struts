package it.perchiacca.rubrica.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import it.perchiacca.rubrica.connection.ConnectionManager;
import it.perchiacca.rubrica.dao.PersonaDAO;
import it.perchiacca.rubrica.entity.PersonaEntity;
import it.perchiacca.rubrica.entity.ProfessioneEntity;

public class PersonaService {
	
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
