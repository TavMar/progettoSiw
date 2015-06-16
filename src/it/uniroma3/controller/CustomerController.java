package it.uniroma3.controller;

import it.uniroma3.facade.CustomerFacade;
import it.uniroma3.model.Customer;
import it.uniroma3.model.Ordine;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
public class CustomerController extends SessioneController {

	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String nome;
	private String cognome;
	private String dataDiNascita;
	private String via;
	private String citta;
	private String stato;
	private String cap;
	private List<Ordine> ordini;
	private String email;
	private String password;
	private String errore;

	@EJB
	private CustomerFacade customerFacade;

	public String checkLogin(String email) throws Exception {
		String pagina = "customerIndex.jsp";
		Customer customer = this.customerFacade.checkLogin(email);
		if(customer!=null)
			try{
				customer.checkPassword(password);
				this.setCurrentCustomer(customer);
			}
		catch (Exception e){
			this.errore="Login fallito";
			pagina = "login.jsp";
		}
		else pagina = "login.jsp";
		this.errore="Login fallito";
		return pagina;
	}

	public String listaOrdini() {
		this.ordini = this.customerFacade.getListaOrdini();
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



	public List<Ordine> getOrdini() {
		return ordini;
	}

	public void setOrdini(List<Ordine> ordini) {
		this.ordini = ordini;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDataDiNascita() {
		return dataDiNascita;
	}

	public void setDataDiNascita(String dataDiNascita) {
		this.dataDiNascita = dataDiNascita;
	}

	public String getStreet() {
		return via;
	}

	public void setStreet(String street) {
		this.via = street;
	}

	public String getCity() {
		return citta;
	}

	public void setCity(String city) {
		this.citta = city;
	}

	public String getState() {
		return stato;
	}

	public void setState(String state) {
		this.stato = state;
	}

	public String getZipcode() {
		return cap;
	}

	public void setZipcode(String zipcode) {
		this.cap = zipcode;
	}

	public String getVia() {
		return via;
	}

	public void setVia(String via) {
		this.via = via;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public String getStato() {
		return stato;
	}

	public void setStato(String stato) {
		this.stato = stato;
	}

	public String getCap() {
		return cap;
	}

	public void setCap(String cap) {
		this.cap = cap;
	}

	public String getErrore() {
		return errore;
	}

	public void setErrore(String errore) {
		this.errore = errore;
	}

}
