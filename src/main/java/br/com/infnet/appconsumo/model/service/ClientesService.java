

package br.com.infnet.appconsumo.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.infnet.appconsumo.clients.IClientesClient;
import br.com.infnet.appconsumo.model.negocio.Cliente;
import br.com.infnet.appconsumo.model.negocio.PessoaFisica;
import br.com.infnet.appconsumo.model.negocio.PessoaJuridica;


@Service
public class ClientesService {
	
	@Autowired private IClientesClient client;
	
	public List<Cliente> buscarClientes() {
		return client.obterClientes();
	}
	
	public Cliente obterViaId(Integer id) {
		
		System.out.println(client.obterPorId(id));
		return client.obterPorId(id);
		
	}

	public void delCliente(Integer id) {
		client.ExcluirPorId(id);
		System.out.println("Exlucindo: " + id + " ...");
	}
	
	public void  cadastrarPj(PessoaJuridica pj) {
		client.incluir(pj);
	}
	
	public void cadastrarPf(PessoaFisica pf) {
		client.incluir(pf);
	}

}
