package currencyconverter.entities;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "currency")
public class Currency {
	@Id
	@Column(name = "timestamp")
	private int timestamp;
	
	@Column(name = "BASE")
	private String base;

	@Embedded
	private Rates rates;


	public int getTimestamp() {
		return timestamp;
	}


	public void setTimestamp(int timestamp) {
		this.timestamp = timestamp;
	}


	public String getBase() {
		return base;
	}


	public void setBase(String base) {
		this.base = base;
	}


	public Rates getRates() {
		return rates;
	}


	public void setRates(Rates rates) {
		this.rates = rates;
	}


	public Currency() {
		
	}

}
