package currencyconverter.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import currencyconverter.dao.UserDao;
import currencyconverter.entities.User;
import currencyconverter.services.UserServices;

@Service
public class UserServicesImpl implements UserServices{
	@Autowired
	UserDao userDao;

	public List<User> list(User user) {
		// TODO Auto-generated method stub
		return userDao.list(user);
	}

	public boolean saveOrUpdate(User user) {
		// TODO Auto-generated method stub
		return userDao.saveOrUpdate(user);
	}
}
