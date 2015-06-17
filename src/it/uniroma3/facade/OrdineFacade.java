package it.uniroma3.facade;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import it.uniroma3.model.*;

@Stateless
public class OrdineFacade {

	@PersistenceContext
	private EntityManager em;

	public Ordine createOrder(Ordine ordine){
		em.persist(ordine);
		return ordine;
	}

	public Ordine trovaOrdine(Long id){
		TypedQuery<Ordine> t = em.createQuery("SELECT o FROM Ordine o WHERE o.id = :id", Ordine.class);
		t.setParameter("id", id);
		try{
			return t.getSingleResult();
		}
		catch(NoResultException e){
			return null;
		}
	}
	
	public void aggiornaOrdine(Ordine o){
		em.merge(o);
	}

	public List<Ordine> getAllOrders(Long idCustomer){
		TypedQuery<Ordine> tq = em.createQuery("SELECT o FROM Ordine o WHERE o.customer.id = :id", Ordine.class);
		tq.setParameter("id", idCustomer);
		return tq.getResultList();
	}
}