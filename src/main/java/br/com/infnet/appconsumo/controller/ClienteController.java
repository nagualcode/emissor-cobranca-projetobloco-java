
package br.com.infnet.appconsumo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.infnet.appconsumo.model.negocio.PessoaFisica;
import br.com.infnet.appconsumo.model.negocio.PessoaJuridica;
import br.com.infnet.appconsumo.model.service.ClientesService;

@Controller
public class ClienteController {
	
	@Autowired
	private ClientesService cservice;
	
	
	@RequestMapping(value = "/clientes", method = RequestMethod.GET)
	public String mostraClientes(
			Model model
			) {
		model.addAttribute("listaclientes",cservice.buscarClientes());
		return "clientes";
	}
	
	@RequestMapping(value = "/clientes/{id}", method = RequestMethod.GET)
	public String ClienteDetalhe(
			Model model,
			@PathVariable Integer id
			) {
		model.addAttribute("listaclientes",cservice.buscarClientes());
		model.addAttribute("clien",cservice.obterViaId(id));
		return "clientes";
	}
	
	
	@RequestMapping(value = "/clientes/del/{id}", method = RequestMethod.GET)
	public String deletaClientes(
			Model model
			,@PathVariable Integer id
			) {
		cservice.delCliente(id);
		model.addAttribute("listaclientes",cservice.buscarClientes());
		return "clientes";
	}
	
	


	@RequestMapping(value = "/cadastro/pj", method = RequestMethod.POST)
	public String cadastrarPj(
			Model model,
			PessoaJuridica pj

			) {
	
		System.out.println("Novo cadastro de pessoa juridica: " + pj);
		cservice.cadastrarPj(pj);
		model.addAttribute("listaclientes",cservice.buscarClientes());
		return "clientes";

	}
	
	@RequestMapping(value = "/cadastro/pf", method = RequestMethod.POST)
	public String cadastrarPf(
			Model model,
			PessoaFisica pf

			) {
	
		System.out.println("Novo cadastro de pessoa fisica: " + pf);
		cservice.cadastrarPf(pf);
		model.addAttribute("listaclientes",cservice.buscarClientes());
		return "clientes";

	}
	
	
	
}
