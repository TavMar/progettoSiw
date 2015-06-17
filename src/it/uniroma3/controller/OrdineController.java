package it.uniroma3.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import it.uniroma3.facade.OrdineFacade;
import it.uniroma3.model.*;


@ManagedBean
public class OrdineController extends SessioneController {

	@ManagedProperty(value="#{param.id}")
	private Long idOrder;
	private Integer quantity;
	private Ordine ordineCorrente;
	private String messaggio;
	//private String message;



	@EJB
	private OrdineFacade ordineFacade;

	@PostConstruct
	public void initOrderController(){
		this.init();
		this.ordineCorrente = (Ordine) this.getSessionAttribute("currentOrder");

	}

	public String initOrder(){
		Ordine newOrder = new Ordine(this.getCurrentCustomer());
		this.ordineCorrente = newOrder;
		this.setSessionAttribute("currentOrder",newOrder);
		return "prodotti";
	}

	public String addProdotto(){
		Product p = (Product) this.getSessionAttribute("currentProduct");
		OrderLine ol = new OrderLine(this.quantity.intValue(),p);
		this.ordineCorrente.addRigaOrdine(ol);
		return "prodotti";

	}
	public String terminaOrdine(){
		this.ordineCorrente.setTotale();
		this.ordineCorrente.setDataChiusura(new Date());
		this.ordineFacade.createOrder(ordineCorrente);
		this.removeAttribute("currentOrder");
		this.removeAttribute("currentProduct");
		return "riepilogoOrdine";
	}

	public String cancellaOrdine(){
		this.removeAttribute("currentOrder");
		this.removeAttribute("currentProduct");
		return "customerIndex";
	}

	public String findOrder(){
		this.ordineCorrente = this.ordineFacade.trovaOrdine(idOrder);
		return "riepilogoOrdine";
	}
	
	public String trovaUtente(){
		String nextPage="infoCliente";
		this.ordineCorrente = this.ordineFacade.trovaOrdine(idOrder);
		if (this.ordineCorrente==null){
			this.messaggio="Ordine inesistente";
			nextPage="cercaInfo";
		}
		return nextPage;
		
	}
	
	public boolean customerStaOrdinando(){
		return this.getCurrentCustomer()!=null && this.ordineCorrente!=null;
	}

	public boolean customerPuoConcludere(){
		return this.getCurrentCustomer()!=null &&
				this.ordineCorrente!=null &&
				this.ordineCorrente.getLineeOrdine().size()>0;
	}
	
	public List<Ordine> getAllOrders(){
		return this.ordineFacade.getAllOrders(this.getCurrentCustomer().getId());
	}
	
	
	public Long getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(Long idOrder) {
		this.idOrder = idOrder;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Ordine getOrdineCorrente() {
		return ordineCorrente;
	}

	public void setOrdineCorrente(Ordine ordineCorrente) {
		this.setSessionAttribute("currentOrder", ordineCorrente);
		this.ordineCorrente = ordineCorrente;
	}

	public String getMessaggio() {
		return messaggio;
	}

	public void setMessaggio(String messaggio) {
		this.messaggio = messaggio;
	}
}