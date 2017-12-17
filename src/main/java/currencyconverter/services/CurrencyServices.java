package currencyconverter.services;

import java.util.List;

import currencyconverter.entities.Currency;


public interface CurrencyServices {
	public List<Currency> list(Currency currency);

	public boolean saveOrUpdate(Currency currency);
}
