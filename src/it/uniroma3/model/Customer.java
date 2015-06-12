package it.uniroma3.model;

import javax.persistence.*;

import java.util.Date;
import java.util.LinkedList;
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
	private List<Ordine> ordini;
	private String email;
	private String password;
	
	public Customer(){
		
	}
	
	public Customer(String nome,String cognome, String email, String password, Date dataDiNascita, Indirizzo indirizzo){
		this.nome=nome;
		this.cognome=cognome;
		this.email=email;
		this.password=password;
		this.dataDiNascita=dataDiNascita;
		this.indirizzo=indirizzo;
		this.dataRegistrazione=new Date();
		this.ordini=new LinkedList<Ordine>();
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public Date getDataDiNascita() {
		return dataDiNascita;
	}
	public void setDataDiNascita(Date dataDiNascita) {
		this.dataDiNascita = dataDiNascita;
	}
	public Date getDataRegistrazione() {
		return dataRegistrazione;
	}
	public void setDataRegistrazione(Date dataRegistrazione) {
		this.dataRegistrazione = dataRegistrazione;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void checkPassword(String password) throws Exception{
     if(!this.password.equals(password))
    	 throw new Exception();
      }
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Indirizzo getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(Indirizzo indirizzo) {
		this.indirizzo = indirizzo;
	}

	
}
