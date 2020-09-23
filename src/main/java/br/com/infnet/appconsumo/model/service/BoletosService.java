package br.com.infnet.appconsumo.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import br.com.infnet.appconsumo.clients.IBoletosClient;

import br.com.infnet.appconsumo.model.negocio.Boleto;


@Service
public class BoletosService {
	
	@Autowired private IBoletosClient client;
	
	public List<Boleto> buscarBoletos() {
		return client.obterBoletos();
	}
	
	public Boleto obterViaId(Integer id) {
		
		return client.obterPorId(id);
		
	}

	public void delBoleto(Integer id) {
		System.out.println("Exlucindo: " + id + " ...");
		client.ExcluirPorId(id);
		
	}
	
	public void  incluirBoleto(Boleto boleto) {
		client.incluir(boleto);
	}
	
}
