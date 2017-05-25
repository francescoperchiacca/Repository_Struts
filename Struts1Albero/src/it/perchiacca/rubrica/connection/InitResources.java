package it.perchiacca.rubrica.connection;

import javax.servlet.ServletException;

import org.apache.struts.action.ActionServlet;
import org.apache.struts.action.PlugIn;
import org.apache.struts.config.ModuleConfig;


public class InitResources implements PlugIn {

		
		public void destroy() {
			// TODO Auto-generated method stub
			
		}

		public void init(ActionServlet arg0, ModuleConfig arg1)
				throws ServletException {
			ConnectionManager.initConnection();		
		}

	
}
