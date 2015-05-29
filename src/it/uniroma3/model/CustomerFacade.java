package it.uniroma3.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

@Stateless
public class CustomerFacade {

	@PersistenceContext(unitName = "progettoSiw")
    private EntityManager em;
	
	public Customer checkLogin(String email) {
        Customer customer = em.find(Customer.class, email);
        return customer;
	}
	
	public List<Ordini> getListaOrdini() {
        CriteriaQuery<Ordini> cq = em.getCriteriaBuilder().createQuery(Ordini.class);
        cq.select(cq.from(Ordini.class));
        List<Ordini> ordini = em.createQuery(cq).getResultList();
		return ordini;
	}
}
