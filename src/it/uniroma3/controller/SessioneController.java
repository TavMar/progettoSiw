package it.uniroma3.controller;

import javax.annotation.PostConstruct;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import it.uniroma3.model.*;

public class SessioneController {

	

	private Customer customerCorrente;
	private Amministratore adminCorrente;

	@PostConstruct
	public void init(){
		this.customerCorrente = (Customer) getSessionAttribute("customerCorrente");
		this.adminCorrente = (Amministratore) getSessionAttribute("adminCorrente");
	}

	public void setSessionAttribute(String value,Object o){
		FacesContext context = FacesContext.getCurrentInstance();
		HttpSession session = (HttpSession) context.getExternalContext().getSession(true);
		session.setAttribute(value, o);
	}

	public Object getSessionAttribute(String value){
		FacesContext context = FacesContext.getCurrentInstance();
		HttpSession session = (HttpSession) context.getExternalContext().getSession(true);
		return session.getAttribute(value);
	}

	public Customer getCurrentCustomer() {
		return customerCorrente;
	}

	public void setCurrentCustomer(Customer currentUser) {
		this.setSessionAttribute("customerCorrente", currentUser);
		this.customerCorrente = currentUser;
	}

	public void setCurrentAdmin(Amministratore a){
		this.setSessionAttribute("adminCorrente", a);
		this.adminCorrente = a;
	}

}