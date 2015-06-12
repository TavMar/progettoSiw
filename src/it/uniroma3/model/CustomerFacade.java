package it.uniroma3.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaQuery;

@Stateless
public class CustomerFacade {

	@PersistenceContext(unitName = "prova")
	private EntityManager em;

	public Customer checkLogin(String email) {
		TypedQuery<Customer> q = em.createQuery("SELECT c FROM Customer c WHERE c.email= :email", Customer.class);
		q.setParameter("email", email);
		try{
			return q.getSingleResult();
		}
		catch(NoResultException e){
			return null;
		}
	}

	public List<Ordine> getListaOrdini() {
		CriteriaQuery<Ordine> cq = em.getCriteriaBuilder().createQuery(Ordine.class);
		cq.select(cq.from(Ordine.class));
		List<Ordine> ordini = em.createQuery(cq).getResultList();
		return ordini;
	}

	public Customer findCustomer(Long id){
		return em.find(Customer.class, id);
	}
}
