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

	public OrderLine(){

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

}
