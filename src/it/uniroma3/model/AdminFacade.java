package it.uniroma3.model;


import java.util.Date;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;


@Stateless
public class AdminFacade {

	@PersistenceContext(unitName = "prova")
    private EntityManager em;
	
	public Customer createCustomer(String nome, String cognome, String email, String password,Date data,Indirizzo indirizzo) {
		Customer customer = new Customer(nome,cognome,email,password,data,indirizzo);
		em.persist(customer);
		return customer;
	}
	
	public Amministratore checkLogin(String email) {
		TypedQuery<Amministratore> q = em.createQuery("SELECT a FROM Amministratore a WHERE a.email= :email", Amministratore.class);
		q.setParameter("email", email);
		try{
			return q.getSingleResult();
		}
		catch(NoResultException e){
			return null;
		}
	}
	
}