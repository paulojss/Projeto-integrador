package br.com.hotel.model;

public class ECliente {
	
	private long codcliente;
	private String nome;
	private String sobrenome;
	private String email;
	private String senha;
	private String telefoneresid;
	private String telefonecelular;
	private String cidade;
	private String rua;
	private String quadra;
	private String lote;
	private String cep;
	private String pais;
	
	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public String getQuadra() {
		return quadra;
	}

	public void setQuadra(String quadra) {
		this.quadra = quadra;
	}

	public String getLote() {
		return lote;
	}

	public void setLote(String lote) {
		this.lote = lote;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public ECliente(){
		
	}

	public long getCodcliente() {
		return codcliente;
	}

	public void setCodcliente(long codcliente) {
		this.codcliente = codcliente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getTelefoneresid() {
		return telefoneresid;
	}

	public void setTelefoneresid(String telefoneresid) {
		this.telefoneresid = telefoneresid;
	}

	public String getTelefonecelular() {
		return telefonecelular;
	}

	public void setTelefonecelular(String telefonecelular) {
		this.telefonecelular = telefonecelular;
	}

}
