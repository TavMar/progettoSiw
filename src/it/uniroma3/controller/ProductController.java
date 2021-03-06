package it.uniroma3.controller;

import java.util.List;





import it.uniroma3.facade.ProdottoFacade;
import it.uniroma3.model.Product;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
public class ProductController extends SessioneController{
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String name;
	private Float price;
	private String description;
	private String code;
	private int quantity;
	private Product product;
	private List<Product> products;
	
	@EJB
	private ProdottoFacade productFacade;
	
	@PostConstruct
	public void initProductController(){
		this.product = (Product) this.getSessionAttribute("currentProduct");
	}
	
	public String createProduct() {
		this.product = productFacade.createProduct(name,code,price,description,quantity);
		return "prodotto"; 
	}
	
	public List<Product> listProducts() {
		return this.products = productFacade.getListaProdotti(); 
	}

	
	public String findProduct() {
		this.product = productFacade.getProdotto(id);
		this.setSessionAttribute("currentProduct", this.product);
		return "prodotto";
	}

	public String tornaAllaHome(){
		String home = "adminIndex.jsp";
		if (!customerLoggato()){
			if(adminLoggato()){
				return home;}
			else {
				home = "index.jsp";
				return home;}
		}
		else{ home = "customerIndex.jsp";
		return home;}
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}


