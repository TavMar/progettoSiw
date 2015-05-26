package it.uniroma3.model;

import javax.persistence.*;

@Entity
public class OrderLine {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private Float prezzo;
	@Column(nullable=false)
	private Integer quantità;
	@ManyToOne
	private Prodotto prodotto;
	@ManyToOne
	private Ordini ordine;

	public OrderLine(){

	}

	public Float getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(Float prezzo) {
		this.prezzo = prezzo;
	}

	public Integer getQuantità() {
		return quantità;
	}

	public void setQuantità(Integer quantità) {
		this.quantità = quantità;
	}

}
