package com.cis.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Deal")
public class Deal {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private long id;
	
	@NotEmpty(message = "From currency cannot Be Empty")
	@Column(name = "from_currency")
	private String fromCurrency;
	
	@NotEmpty(message = "To currency cannot Be Empty")
	@Column(name = "to_currency")
	private String toCurrency;
	
	@NotNull(message = "Date cannot Be Empty")
	@Column(name = "timestamp")
	private Date timestamp;
	
	@NotNull(message = "Amount cannot Be Empty")
	@Min(0)
	@Column(name = "amount")
	private double amount;

	public Deal() {
	}

	public Deal(long id, String fromCurrency, String toCurrency, Date timestamp, double amount) {
		this.id = id;
		this.fromCurrency = fromCurrency;
		this.toCurrency = toCurrency;
		this.timestamp = timestamp;
		this.amount = amount;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFromCurrency() {
		return fromCurrency;
	}

	public void setFromCurrency(String fromCurrency) {
		this.fromCurrency = fromCurrency;
	}

	public String getToCurrency() {
		return toCurrency;
	}

	public void setToCurrency(String toCurrency) {
		this.toCurrency = toCurrency;
	}

	public Date getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "Deal [id=" + id + ", fromCurrency=" + fromCurrency + ", toCurrency=" + toCurrency + ", timestamp="
				+ timestamp + ", amount=" + amount + "]";
	}

}
