package com.cis.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="iso_currency_code")
public class IsoCurrencyCode {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name ="id")
	private long id;
	
	@Column(name ="country_name")
	private String countryName;
	
	@Column(name = "currency_code")
	private String currencyCode;
	
	@Transient
	private String combinedData;
	
	public IsoCurrencyCode() {
	}

	public IsoCurrencyCode(long id, String countryName, String currencyCode, String combinedData) {
		super();
		this.id = id;
		this.countryName = countryName;
		this.currencyCode = currencyCode;
		this.combinedData = countryName +"("+currencyCode+")";
	}


	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public String getCurrencyCode() {
		return currencyCode;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}

	public String getCombinedData() {
		return combinedData;
	}

	public void setCombinedData(String combinedData) {
		this.combinedData = combinedData;
	}	
	
}
