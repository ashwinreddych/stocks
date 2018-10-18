package com.ashwin.stocks.bean;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import org.springframework.data.annotation.Id;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "users")
public class Stock {
	
	@Id
	private String id;
	@NotEmpty
	@NotNull
	@Size(min=3, message="Ticker should be atleast 3 characters")
	private String ticker;
	@Pattern(regexp="^[a-zA-Z]+$", message="Name can only contain Alphabets")
	private String stockName;
	private String sector;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTicker() {
		return ticker;
	}
	public void setTicker(String ticker) {
		this.ticker = ticker;
	}
	public String getStockName() {
		return stockName;
	}
	public void setStockName(String stockName) {
		this.stockName = stockName;
	}
	public String getSector() {
		return sector;
	}
	public void setSector(String sector) {
		this.sector = sector;
	}
	
	

}
