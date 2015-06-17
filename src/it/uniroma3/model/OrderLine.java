package it.uniroma3.model;

import javax.persistence.*;

@Entity
public class OrderLine {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private Float prezzo;
	@Column(nullable=false)
	private Integer quantita;
	@ManyToOne
	private Product prodotto;
	@ManyToOne
	private Ordine ordine;
	private Float totale;

	public OrderLine(){

	}
	
	public OrderLine(Integer quantita,Product prodotto){
		this.quantita=quantita;
		this.prodotto=prodotto;
		this.prezzo=this.prodotto.getPrice();
		this.totale = this.quantita*this.prezzo;
	}

	public Float getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(Float prezzo) {
		this.prezzo = prezzo;
	}

	public Integer getQuantita() {
		return quantita;
	}

	public void setQuantita(Integer quantita) {
		this.quantita = quantita;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Product getProdotto() {
		return prodotto;
	}

	public void setProdotto(Product prodotto) {
		this.prodotto = prodotto;
	}

	public Ordine getOrdine() {
		return ordine;
	}

	public void setOrdine(Ordine ordine) {
		this.ordine = ordine;
	}

	public Float getTotale() {
		return totale;
	}

	public void setTotale(Float totale) {
		this.totale = totale;
	}

}
