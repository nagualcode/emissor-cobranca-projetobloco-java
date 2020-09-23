

package br.com.infnet.appconsumo.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.infnet.appconsumo.model.negocio.Cliente;






@FeignClient(url = "http://localhost:8081/api/cliente", name = "clientesClient")

public interface IClientesClient {
	
	
	@GetMapping("/obter?id={id}")
	public Cliente obterPorId(@PathVariable Integer id);
	
		
	@GetMapping
	public List<Cliente> obterClientes();
	
	
	
	@PostMapping
	public void incluir(Cliente cliente);
	
	@DeleteMapping("/del/{id}")
	public void ExcluirPorId(@PathVariable Integer id);

}


