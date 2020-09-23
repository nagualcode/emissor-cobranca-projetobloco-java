package br.com.infnet.appconsumo.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import br.com.infnet.appconsumo.clients.IServicosClient;

import br.com.infnet.appconsumo.model.negocio.Servico;


@Service
public class ServicosService {
	
	@Autowired private IServicosClient client;
	
	public List<Servico> buscarServicos() {
		return client.obterServicos();
	}
	
	public Servico obterViaId(Integer id) {
		
		System.out.println(client.obterPorId(id));
		return client.obterPorId(id);
		
	}

	public void delServico(Integer id) {
		System.out.println("Exlucindo: " + id + " ...");
		client.ExcluirPorId(id);
		
	}
	
	public void  incluirServico(Servico serv) {
		client.incluir(serv);
	}
	
}
