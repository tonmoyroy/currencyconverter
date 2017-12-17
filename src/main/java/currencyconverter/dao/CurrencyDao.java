package currencyconverter.dao;

import java.util.List;

import currencyconverter.entities.Currency;


public interface CurrencyDao {
	public List<Currency> list(Currency currency);

	public boolean saveOrUpdate(Currency currency);
}
