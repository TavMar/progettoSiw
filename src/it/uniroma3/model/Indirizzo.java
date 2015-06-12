package it.uniroma3.model;

import javax.persistence.*;

@Entity
public class Indirizzo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(nullable = false)
	private String via;
	@Column(nullable = false)
	private String citta;
	private String stato;
	@Column(nullable = false)
	private String cap;
	
	public Indirizzo(){
		
	}
	
	public Indirizzo(String via,String citta,String cap,String stato){
	this.via=via;
	this.citta=citta;
	this.cap=cap;
	this.stato=stato;
	}

	public String getVia() {
		return via;
	}

	public void setVia(String via) {
		this.via = via;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public String getStato() {
		return stato;
	}

	public void setStato(String stato) {
		this.stato = stato;
	}

	public String getCap() {
		return cap;
	}

	public void setCap(String cap) {
		this.cap = cap;
	}
	
}
