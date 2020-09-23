package br.com.infnet.appconsumo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import br.com.infnet.appconsumo.model.negocio.Boleto;
import br.com.infnet.appconsumo.model.negocio.Cliente;
import br.com.infnet.appconsumo.model.negocio.Servico;
import br.com.infnet.appconsumo.model.service.BoletosService;
import br.com.infnet.appconsumo.model.service.ClientesService;
import br.com.infnet.appconsumo.model.service.ServicosService;


@Controller
public class BoletosController {
	
	@Autowired
	private BoletosService bservice;
	
	@Autowired
	private ClientesService bcservice;
	
	@Autowired
	private ServicosService bsservice;
	

	
	@RequestMapping(value = "/boletos", method = RequestMethod.GET)
	public String listaBoletos(
			Model model
			) {
		model.addAttribute("boletos",bservice.buscarBoletos());
		model.addAttribute("clientes",bcservice.buscarClientes());
		model.addAttribute("servicos",bsservice.buscarServicos());
		return "boletos";
	}
	
	@RequestMapping(value = "/boletos", method = RequestMethod.POST)
	public String emitirBoletos(
			Model model,
			Boleto boleto

			) {

		System.out.println("Novo cadastro de boleto: " + boleto);
		Cliente cliente = bcservice.obterViaId(boleto.getIdcliente());
		boleto.setCliente(cliente);		
		Servico servico = bsservice.obterViaId(boleto.getIdservico());
		boleto.setServico(servico);
		bservice.incluirBoleto(boleto);
		
		model.addAttribute("boletos",bservice.buscarBoletos());
		model.addAttribute("clientes",bcservice.buscarClientes());
		model.addAttribute("servicos",bsservice.buscarServicos());
		
		return "boletos";

	}
	
	@RequestMapping(value = "/boletos/del/{id}", method = RequestMethod.GET)
	public String deletaBoletos(
			Model model
			,@PathVariable Integer id
			) {
		bservice.delBoleto(id);
		model.addAttribute("listaboletos",bservice.buscarBoletos());
		return "boletos";
	}
	
	@RequestMapping(value = "/emitir/{id}", method = RequestMethod.GET)
	public String geraBoleto(
			Model model
			,@PathVariable Integer id
			) {
		
		model.addAttribute("bol",bservice.obterViaId(id));
		return "emitir";
	}

}
