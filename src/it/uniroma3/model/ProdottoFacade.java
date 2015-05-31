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
	 
	 public Product createProduct(String name, String code, Float price, String description) {
			Product prodotto = new Product(name,code,price,description);
			em.persist(prodotto);
			return prodotto;
		}
	 
	 public Product getProdotto(Long id) {
		    Product prodotto = em.find(Product.class, id);
			return prodotto;
		}
		
		public List<Product> getListaProdotti() {
	        CriteriaQuery<Product> cq = em.getCriteriaBuilder().createQuery(Product.class);
	        cq.select(cq.from(Product.class));
	        List<Product> prodotti = em.createQuery(cq).getResultList();
			return prodotti;
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
