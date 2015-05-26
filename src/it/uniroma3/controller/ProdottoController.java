package it.uniroma3.controller;

import java.util.List;

import it.uniroma3.model.Prodotto;
import it.uniroma3.model.ProdottoFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
public class ProdottoController {

	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String nome;
	private Float prezzo;
	private String descrizione;
	private String codice;
	private Prodotto prodotto;
	private List<Prodotto> listaProdotti;
	
	@EJB
	private ProdottoFacade prodottoFacade;
	
	public String creaProdotto() {
		this.prodotto = prodottoFacade.creaProdotto(nome, codice, prezzo, descrizione);
		return "prodotto"; 
	}
	
	public String listaProdotti() {
		this.listaProdotti = prodottoFacade.getListaProdotti();
		return "prodotti"; 
	}

	public String trovaProdotto() {
		this.prodotto = prodottoFacade.getProdotto(id);
		return "prodotto";
	}
	
	public String trovaProdottoPerId(Long id) {
		this.prodotto = prodottoFacade.getProdotto(id);
		return "prodotto";
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Float getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(Float prezzo) {
		this.prezzo = prezzo;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getCodice() {
		return codice;
	}

	public void setCodice(String codice) {
		this.codice = codice;
	}

	public Prodotto getProdotto() {
		return prodotto;
	}

	public void setProdotto(Prodotto prodotto) {
		this.prodotto = prodotto;
	}

	public List<Prodotto> getListaProdotti() {
		return listaProdotti;
	}

	public void setListaProdotti(List<Prodotto> listaProdotti) {
		this.listaProdotti = listaProdotti;
	}
}
