package it.uniroma3.controller;

import it.uniroma3.facade.AdminFacade;
import it.uniroma3.model.Amministratore;
import it.uniroma3.model.Customer;
import it.uniroma3.model.Indirizzo;
import it.uniroma3.model.Ordine;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
public class AdminController extends SessioneController{

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
	private Customer customer;

	@EJB
	private AdminFacade adminFacade;

	public String createCustomer() throws ParseException {
		Date data;
			data = new SimpleDateFormat("dd/MM/yyyy").parse(this.dataDiNascita);
		this.customer = adminFacade.createCustomer(nome, cognome, email, password,data,new Indirizzo(via,citta,cap,stato));
		return "cliente"; 
	}
	
	public String checkLogin(String email) throws Exception {
		String pagina = "adminIndex.jsp";
		Amministratore admin = this.adminFacade.checkLogin(email);
		if(admin!=null)
			try{
				admin.checkPassword(password);
				this.setCurrentAdmin(admin);
			}
		catch (Exception e){

			pagina = "error";
		}

		else pagina = "error";
		return pagina;
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

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getDataDiNascita() {
		return dataDiNascita;
	}

	public void setDataDiNascita(String dataDiNascita) {
		this.dataDiNascita = dataDiNascita;
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
}
