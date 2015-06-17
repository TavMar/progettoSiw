package it.uniroma3.model;

import javax.persistence.*;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;

@Entity
public class Ordine {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Temporal (TemporalType.TIMESTAMP)
	private Date dataCreazione;
	@Temporal (TemporalType.TIMESTAMP)
	private Date dataChiusura;
	@Temporal (TemporalType.TIMESTAMP)
	private Date dataEvasione;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_ordini")
	private List<OrderLine> lineeOrdine;
	@ManyToOne
	private Customer customer;
	private Float totale;


	public Ordine(){

	}
	
	public Ordine(Customer customer){
		this.customer=customer;
		this.dataCreazione=new Date();
		this.lineeOrdine=new LinkedList<OrderLine>();
	}
	
	public void setTotale(){
		Float totale=new Float(0);
		for(OrderLine o : this.lineeOrdine){
			totale+=o.getTotale();
		}
		this.totale = totale;
	}

	// GETTER AND SETTER

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public Date getDataCreazione() {
		return dataCreazione;
	}


	public void setDataCreazione(Date dataCreazione) {
		this.dataCreazione = dataCreazione;
	}


	public Date getDataChiusura() {
		return dataChiusura;
	}


	public void setDataChiusura(Date dataChiusura) {
		this.dataChiusura = dataChiusura;
	}


	public Date getDataEvasione() {
		return dataEvasione;
	}


	public void setDataEvasione(Date dataEvasione) {
		this.dataEvasione = dataEvasione;
	}
	
	public void addRigaOrdine(OrderLine o){
		this.lineeOrdine.add(o);
	}
	
	public List<OrderLine> getLineeOrdine(){
		return lineeOrdine;
	}

	public void setLineeOrdine(List<OrderLine> lineeOrdine) {
		this.lineeOrdine = lineeOrdine;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Float getTotale() {
		return totale;
	}

	public void setTotale(Float totale) {
		this.totale = totale;
	}
}
