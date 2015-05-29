package it.uniroma3.controller;

import it.uniroma3.model.Customer;
import it.uniroma3.model.CustomerFacade;
import it.uniroma3.model.Indirizzo;
import it.uniroma3.model.Ordini;

import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
public class CustomerController {
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String nome;
	private String cognome;
	private Date dataDiNascita;
	private Date dataRegistrazione;
	private Indirizzo indirizzo;
	private List<Ordini> ordini;
	private String email;
	private String password;
	private Customer customer;
	
	@EJB
	private CustomerFacade customerFacade;
	
	public String checkLogin() {
		this.customer = customerFacade.checkLogin(email);
		if(this.customer.checkPassword(password))
		return "customer"; 
		return "Password errata";
	}
	
	public String listaOrdini() {
		this.ordini = customerFacade.getListaOrdini();
		return "ordini"; 
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public Date getDataDiNascita() {
		return dataDiNascita;
	}

	public void setDataDiNascita(Date dataDiNascita) {
		this.dataDiNascita = dataDiNascita;
	}

	public Date getDataRegistrazione() {
		return dataRegistrazione;
	}

	public void setDataRegistrazione(Date dataRegistrazione) {
		this.dataRegistrazione = dataRegistrazione;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
