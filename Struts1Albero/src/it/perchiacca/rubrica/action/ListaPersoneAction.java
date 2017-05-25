package it.perchiacca.rubrica.action;

import java.util.Collections;
import java.util.List;

import it.perchiacca.rubrica.entity.PersonaEntity;
import it.perchiacca.rubrica.service.PersonaService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class ListaPersoneAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping,
								 ActionForm form,
								 HttpServletRequest request,
								 HttpServletResponse response) throws Exception {
		System.out.println("ListaPersonaAction - execute - INIZIO");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username + " - " + password);
		if(username.equals("") || password.equalsIgnoreCase("")){
			String notifica = "Verificare l'inserimento dei campi";
			HttpSession session = request.getSession(true);
			session.setAttribute("notifica", notifica);
			ActionForward actionForward = mapping.findForward("erroreValidazione");
			return actionForward;
		}
		else{
			String notifica = "";
			HttpSession session = request.getSession(true);
			session.setAttribute("notifica", notifica);
				
			try {
				List<PersonaEntity> lista = PersonaService.getListaPersone();
				request.setAttribute("listaPersone", lista);
			}
			catch(Exception e) {
				request.setAttribute("listaPersone", Collections.emptyList());
			}
			System.out.println("ListaPersonaAction - execute - FINE");
			return mapping.findForward("success");
		}
	}
	
}
