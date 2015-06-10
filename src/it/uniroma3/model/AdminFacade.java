package it.uniroma3.model;


import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


@Stateless
public class AdminFacade {

	@PersistenceContext(unitName = "progettoSiw")
    private EntityManager em;
	
	public Customer createCustomer(String nome, String cognome, String email, String password) {
		Customer customer = new Customer(nome,cognome,email,password);
		em.persist(customer);
		return customer;
	}
	
}