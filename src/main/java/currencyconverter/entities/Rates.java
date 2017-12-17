package currencyconverter.entities;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

@Embeddable
@Table(name = "currency")
public class Rates {
	
	public Rates() {
		
	}
	
	
	@Column(name = "AUD")
	@JsonProperty("AUD")
	private String AUD;

	@Column(name = "BDT")
	@JsonProperty("BDT")
	private String BDT;
	
	@Column(name = "CAD")
	@JsonProperty("CAD")
	private String CAD;

	@Column(name = "EUR")
	@JsonProperty("EUR")
	private String EUR;
	
	@Column(name = "SEK")
	@JsonProperty("SEK")
	private String SEK;

	@Column(name = "INR")
	@JsonProperty("INR")
	private String INR;
	
	@Column(name = "USD")
	@JsonProperty("USD")
	private String USD;

	public String getAUD() {
		return AUD;
	}

	public void setAUD(String aUD) {
		AUD = aUD;
	}

	public String getBDT() {
		return BDT;
	}

	public void setBDT(String bDT) {
		BDT = bDT;
	}

	public String getCAD() {
		return CAD;
	}

	public void setCAD(String cAD) {
		CAD = cAD;
	}

	public String getEUR() {
		return EUR;
	}

	public void setEUR(String eUR) {
		EUR = eUR;
	}

	public String getSEK() {
		return SEK;
	}

	public void setSEK(String sEK) {
		SEK = sEK;
	}

	public String getINR() {
		return INR;
	}

	public void setINR(String iNR) {
		INR = iNR;
	}

	public String getUSD() {
		return USD;
	}

	public void setUSD(String uSD) {
		USD = uSD;
	}



}
