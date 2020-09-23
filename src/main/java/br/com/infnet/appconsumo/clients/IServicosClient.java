
package br.com.infnet.appconsumo.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.infnet.appconsumo.model.negocio.Servico;






@FeignClient(url = "http://localhost:8081/api/servico", name = "servicosClient")

public interface IServicosClient {
	
	
	@GetMapping("/obter?id={id}")
	public Servico obterPorId(@PathVariable Integer id);
	
		
	@GetMapping
	public List<Servico> obterServicos();
	
	
	
	@PostMapping
	public void incluir(Servico servico);
	
	@DeleteMapping("/del/{id}")
	public void ExcluirPorId(@PathVariable Integer id);

}


