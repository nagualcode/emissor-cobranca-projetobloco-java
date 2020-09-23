package br.com.infnet.appconsumo.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.infnet.appconsumo.model.negocio.Boleto;






@FeignClient(url = "http://localhost:8081/api/boleto", name = "boletosClient")

public interface IBoletosClient {
	
	
	@GetMapping("/obter?id={id}")
	public Boleto obterPorId(@PathVariable Integer id);
	
		
	@GetMapping
	public List<Boleto> obterBoletos();
	
	
	
	@PostMapping
	public void incluir(Boleto boleto);
	
	@DeleteMapping("/del/{id}")
	public void ExcluirPorId(@PathVariable Integer id);

}



