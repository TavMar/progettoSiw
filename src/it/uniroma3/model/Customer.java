package it.uniroma3.model;

import javax.persistence.*;

import java.util.Date;
import java.util.List;

@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(nullable=false)
	private String nome;
	@Column(nullable=false)
	private String cognome;
	@Temporal (TemporalType.DATE)
	private Date dataDiNascita;
	@Temporal (TemporalType.DATE)
	private Date dataRegistrazione;
	@OneToOne(cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
	private Indirizzo indirizzo;
	@OneToMany(mappedBy = "customer")
	private List<Ordini> ordini;
	private String email;
}
