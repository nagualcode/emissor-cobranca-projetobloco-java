package br.com.infnet.appconsumo.model.negocio;


public class PessoaJuridica extends Cliente {

	private String cnpj;
	
	

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
	
	@Override
	public String toString() {
		return String.format("%s - %s - %s - Cnpj: %s",
					this.getNome(),
					this.getEmail(),
					this.getCep(),
					this.getCnpj()
				);
	}



}