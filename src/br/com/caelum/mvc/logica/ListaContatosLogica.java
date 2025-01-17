package br.com.caelum.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class ListaContatosLogica implements Logica {

	public String executa(HttpServletRequest req, HttpServletResponse res)
		throws Exception{
		
		List<Contato> contatos = new ContatoDao().getLista();
		
		return "lista-contatos.jsp";
	}
	
}
