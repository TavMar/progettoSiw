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
		this.setAdminCorrente((Amministratore) getSessionAttribute("adminCorrente"));
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

	public void removeAttribute(String nameAttribute){
		FacesContext context = FacesContext.getCurrentInstance();
		HttpSession session = (HttpSession) context.getExternalContext().getSession(true);
		session.removeAttribute(nameAttribute);
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
		this.setAdminCorrente(a);
	}

	public Amministratore getAdminCorrente() {
		return adminCorrente;
	}

	public void setAdminCorrente(Amministratore adminCorrente) {
		this.adminCorrente = adminCorrente;
	}

	public boolean adminLoggato(){
		return this.adminCorrente!=null;
	}
	
	public boolean customerLoggato(){
		return this.customerCorrente!=null;
	}
	
	public boolean nessunoLoggato(){
		return this.customerCorrente!=null && this.adminCorrente!=null;
	}
}