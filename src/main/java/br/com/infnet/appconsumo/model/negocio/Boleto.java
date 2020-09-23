package br.com.infnet.appconsumo.model.negocio;

public class Boleto {
	
	private Integer id;
	
    private Integer idcliente;
    
    private Integer idservico;
	
	private String codigo;
	
	private String vencimento;
	
	private Cliente cliente;
	
	private Servico servico;
	
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public String getVencimento() {
		return vencimento;
	}

	public void setVencimento(String vencimento) {
		this.vencimento = vencimento;
	}

	
	


	public Integer getIdcliente() {
		return idcliente;
	}

	public void setIdcliente(Integer idcliente) {
		this.idcliente = idcliente;
	}

	public Integer getIdservico() {
		return idservico;
	}

	public void setIdservico(Integer idservico) {
		this.idservico = idservico;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	@Override
	public String toString() {
		return String.format("Boleto: %s - %s idcliente: %d idserv: %d",
					this.getCodigo(),
					this.getVencimento(),
					this.getIdcliente(),
					this.getIdservico()
					
				);
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Servico getServico() {
		return servico;
	}

	public void setServico(Servico servico) {
		this.servico = servico;
	}
	
	

}
