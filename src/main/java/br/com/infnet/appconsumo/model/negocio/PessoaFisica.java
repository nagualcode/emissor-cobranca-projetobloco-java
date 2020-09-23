package br.com.infnet.appconsumo.model.negocio;


public class PessoaFisica extends Cliente {


	private String cpf;
	

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	
	@Override
	public String toString() {
		return String.format("%s - %s - %s - cpf: %s",
					this.getNome(),
					this.getEmail(),
					this.getCep(),
					this.getCpf()
				);
	}



}