package it.uniroma3.model;

import javax.persistence.*;


import java.util.Date;
import java.util.List;

@Entity
public class Ordine {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Temporal (TemporalType.DATE)
	private Date dataCreazione;
	@Temporal (TemporalType.DATE)
	private Date dataChiusura;
	@Temporal (TemporalType.DATE)
	private Date dataEvasione;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_ordini")
	private List<OrderLine> lineeOrdine;
	@ManyToOne
	private Customer customer;


	public Ordine(){

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
}