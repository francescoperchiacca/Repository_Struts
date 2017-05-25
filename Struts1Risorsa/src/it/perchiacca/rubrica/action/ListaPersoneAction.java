package it.perchiacca.rubrica.action;

import java.util.Collections;
import java.util.List;

import it.perchiacca.rubrica.entity.PersonaEntity;
import it.perchiacca.rubrica.service.PersonaService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		System.out.println("hhh---->>>");
		try {
			List<PersonaEntity> lista = PersonaService.getListaPersone();
			request.setAttribute("listaPersone", lista);
		}
		catch(Exception e) {
			request.setAttribute("listaPersone", Collections.emptyList());
		}
		
		return mapping.findForward("success");
	}
	
}
