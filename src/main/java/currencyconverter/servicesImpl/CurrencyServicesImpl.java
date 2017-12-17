package currencyconverter.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import currencyconverter.dao.CurrencyDao;
import currencyconverter.entities.Currency;
import currencyconverter.entities.User;
import currencyconverter.services.CurrencyServices;

@Service
public class CurrencyServicesImpl implements CurrencyServices{
	@Autowired
	CurrencyDao currencyDao;

	public List<Currency> list(Currency currency) {
		// TODO Auto-generated method stub
		return currencyDao.list(currency);
	}

	public boolean saveOrUpdate(Currency currency) {
		// TODO Auto-generated method stub
		return currencyDao.saveOrUpdate(currency);
	}
}
