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


	public Ordine(){

	}
	
	public Ordine(Customer customer){
		this.customer=customer;
		this.dataCreazione=new Date();
		this.lineeOrdine=new LinkedList<OrderLine>();
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
		return this.lineeOrdine;
	}
}
