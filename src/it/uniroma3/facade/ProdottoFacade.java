package it.uniroma3.facade;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import it.uniroma3.model.Product;


import java.util.List;

@Stateless
public class ProdottoFacade {

	 @PersistenceContext(unitName = "prova")
	    private EntityManager em;
	 
	 public Product createProduct(String name, String code, Float price, String description, int quantity) {
			Product prodotto = new Product(name,code,price,description,quantity);
			em.persist(prodotto);
			return prodotto;
		}
	 
	 public Product getProdotto(Long id) {
		    return em.find(Product.class, id);
		}
		
		public List<Product> getListaProdotti() {
			TypedQuery<Product> q = em.createNamedQuery("findAllProducts",Product.class);	
			List<Product> result = q.getResultList();
			return result;
		}

		public void aggiornaProdotto(Product prodotto) {
	        em.merge(prodotto);
		}
		
	    private void eliminaProdotto(Product prodotto) {
	        em.remove(prodotto);
	    }

		public void eliminaProdottoDaId(Long id) {
	        Product prodotto = em.find(Product.class, id);
	        eliminaProdotto(prodotto);
		}
		
}
