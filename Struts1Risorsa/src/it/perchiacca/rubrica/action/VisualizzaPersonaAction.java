package it.perchiacca.rubrica.action;

import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import it.perchiacca.rubrica.entity.PersonaEntity;
import it.perchiacca.rubrica.entity.ProfessioneEntity;
import it.perchiacca.rubrica.form.InserisciPersonaForm;
import it.perchiacca.rubrica.service.PersonaService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class VisualizzaPersonaAction extends Action {
	
	
	@Override
	public ActionForward execute(ActionMapping mapping, 
								 ActionForm form,
								 HttpServletRequest request, 
								 HttpServletResponse response) throws Exception {
		
/*		InserisciPersonaForm ipf = (InserisciPersonaForm)form;
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date dataNascita = new Date(sdf.parse(ipf.getDataNascita()).getTime());
		
		PersonaEntity personaEntity = new PersonaEntity(ipf.getNome(), 
														ipf.getCognome(), 
														dataNascita, 
														ipf.getSesso(), 
														new ProfessioneEntity(Integer.parseInt(ipf.getIdProfessione())));
		try {
			PersonaService.inserisciPersona(personaEntity);
			System.out.println("L'inserimento è avvenuto con successo");
		}
		catch (SQLException e) {
			e.printStackTrace();
			return mapping.findForward("error");
		}		
	*/	
		return mapping.findForward("success");
	}
}

