package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

import java.util.List;

@Stateless
public class ProdottoFacade {

	 @PersistenceContext(unitName = "progettoSiw")
	    private EntityManager em;
	 
	 public Prodotto creaProdotto(String nome, String codice, Float prezzo, String descrizione) {
			Prodotto prodotto = new Prodotto(nome, prezzo, descrizione, codice);
			em.persist(prodotto);
			return prodotto;
		}
	 
	 public Prodotto getProdotto(Long id) {
		    Prodotto prodotto = em.find(Prodotto.class, id);
			return prodotto;
		}
		
		public List<Prodotto> getListaProdotti() {
	        CriteriaQuery<Prodotto> cq = em.getCriteriaBuilder().createQuery(Prodotto.class);
	        cq.select(cq.from(Prodotto.class));
	        List<Prodotto> prodotti = em.createQuery(cq).getResultList();
			return prodotti;
		}

		public void aggiornaProdotto(Prodotto prodotto) {
	        em.merge(prodotto);
		}
		
	    private void eliminaProdotto(Prodotto prodotto) {
	        em.remove(prodotto);
	    }

		public void eliminaProdottoDaId(Long id) {
	        Prodotto prodotto = em.find(Prodotto.class, id);
	        eliminaProdotto(prodotto);
		}
		
		/*	   private EntityManager entityManager;
		    private EntityManagerFactory emf;

			public ProdottoFacade()  {
				emf = Persistence.createEntityManagerFactory("prodotti-unit");
				entityManager = emf.createEntityManager();
			}

			public Prodotto creaProdotto(String nome, String codice, Float prezzo, String descrizione) {
				Prodotto product = new Prodotto(nome, prezzo, descrizione, codice);
				EntityTransaction tx = entityManager.getTransaction();
				tx.begin();
				entityManager.persist(product);
				tx.commit();
				entityManager.close();
				emf.close();
				return product;
			}
			
			public Product getProduct(Long id) {
			    Product product = entityManager.find(Product.class, id);
				entityManager.close();
				emf.close();
				return product;
			}
			
			public List<Product> getAllProducts() {
		        CriteriaQuery<Product> cq = entityManager.getCriteriaBuilder().createQuery(Product.class);
		        cq.select(cq.from(Product.class));
		        List<Product> products = entityManager.createQuery(cq).getResultList();
				entityManager.close();
				emf.close();
				return products;
			}

			public void updateProduct(Product product) {
				EntityTransaction tx = entityManager.getTransaction();
				tx.begin();
		        entityManager.merge(product);
				tx.commit();
				entityManager.close();
				emf.close();	}
			
		    private void deleteProduct(Product product) {
		        entityManager.remove(product);
		    }

			public void deleteProduct(Long id) {
				EntityTransaction tx = entityManager.getTransaction();
				tx.begin();
		        Product product = entityManager.find(Product.class, id);
		        deleteProduct(product);
				tx.commit();
				entityManager.close();
				emf.close();	
			} */
}
