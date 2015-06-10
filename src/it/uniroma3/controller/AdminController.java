package it.uniroma3.controller;

import it.uniroma3.model.AdminFacade;
import it.uniroma3.model.Customer;
import it.uniroma3.model.Ordini;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
public class AdminController {

	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String nome;
	private String cognome;
	private List<Ordini> ordini;
	private String email;
	private String password;
	private Customer customer;

	@EJB
	private AdminFacade adminFacade;

	public String createCustomer() {
		this.customer = adminFacade.createCustomer(nome, cognome, email, password);
		return "cliente"; 
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


	public List<Ordini> getOrdini() {
		return ordini;
	}

	public void setOrdini(List<Ordini> ordini) {
		this.ordini = ordini;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
}
