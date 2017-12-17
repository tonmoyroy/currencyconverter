package currencyconverter.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import currencyconverter.dao.CurrencyDao;
import currencyconverter.entities.Currency;


@Repository
@Transactional
public class CurrencyDaoImpl implements CurrencyDao {
	@Autowired
	SessionFactory sessionFactory;

	public List<Currency> list(Currency currency) {
		// TODO Auto-generated method stub
		Query query = sessionFactory.getCurrentSession()
				.createQuery("from User where email= :email and password= :password");
		List<Currency> ul = query.list();
		System.out.println(ul.size());
		return ul;
	}

	public boolean saveOrUpdate(Currency currency) {
		// TODO Auto-generated method stub
		boolean status = false;
//		try {
			sessionFactory.getCurrentSession().saveOrUpdate(currency);
			status = true;
//		} catch (Exception e) {
//		}
		return status;
	}
}
