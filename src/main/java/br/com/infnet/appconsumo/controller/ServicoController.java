package br.com.infnet.appconsumo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import br.com.infnet.appconsumo.model.negocio.Servico;

import br.com.infnet.appconsumo.model.service.ServicosService;

@Controller
public class ServicoController {
	
	@Autowired
	private ServicosService sservice;
	
	
	@RequestMapping(value = "/servicos", method = RequestMethod.GET)
	public String mostraServicos(
			Model model
			) {
		model.addAttribute("listaservicos",sservice.buscarServicos());
		return "servicos";
	}
	
	@RequestMapping(value = "/servicos/{id}", method = RequestMethod.GET)
	public String ServicoDetalhe(
			Model model,
			@PathVariable Integer id
			) {
		model.addAttribute("listaservicos",sservice.buscarServicos());
		model.addAttribute("serv",sservice.obterViaId(id));
		return "servicos";
	}
	
	
	
	@RequestMapping(value = "/servicos/del/{id}", method = RequestMethod.GET)
	public String deletaServicos(
			Model model
			,@PathVariable Integer id
			) {
		sservice.delServico(id);
		model.addAttribute("listaservicos",sservice.buscarServicos());
		return "servicos";
	}
	
	


	@RequestMapping(value = "/servicos", method = RequestMethod.POST)
	public String cadastrarServico(
			Model model,
			Servico serv

			) {
	
		System.out.println("Novo cadastro de servico: " + serv);
		sservice.incluirServico(serv);
		model.addAttribute("listaservicos",sservice.buscarServicos());
		return "servicos";

	}
		
	
	
}
