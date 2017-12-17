package currencyconverter.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;

import currencyconverter.entities.Currency;
import currencyconverter.entities.User;
import currencyconverter.services.CurrencyServices;
import currencyconverter.services.UserServices;

@Controller
@RequestMapping("/")
@SessionAttributes({ "username", "useremail" })
public class IndexController {
	@Autowired
	UserServices userservices;
	
	@Autowired
	CurrencyServices currencyservices;


	@RequestMapping
	public String index() {
		return "index";
	}

	@RequestMapping(value = "/dashboard")
	public String dashboard(ModelMap model) {
		if (model.containsAttribute("username") && model.containsAttribute("useremail")) {
			RestTemplate restTemplate = new RestTemplate();
			Currency object = restTemplate.getForObject("https://openexchangerates.org/api/latest.json?app_id=c711b4b790394dbda5c198180f42e60a", Currency.class);
			System.out.println(object.getTimestamp());
			currencyservices.saveOrUpdate(object);
			model.addAttribute("base", object.getBase());
			model.addAttribute("aud", object.getRates().getAUD());
			model.addAttribute("bdt", object.getRates().getBDT());
			model.addAttribute("cad", object.getRates().getCAD());
			model.addAttribute("eur", object.getRates().getEUR());
			model.addAttribute("inr", object.getRates().getINR());
			model.addAttribute("sek", object.getRates().getSEK());
			model.addAttribute("usd", object.getRates().getUSD());
			return "dashboard";
		} else
			return "index";
	}
	
	@RequestMapping(value = "/userauth", method = RequestMethod.POST)
	public String userauthentication(@ModelAttribute("user") User user, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "error";
		}

		if (user.getSubmit().equals("Login")) {
			List<User> userlist = userservices.list(user);

			if (userlist.size() == 1) {
				System.out.println("User Login Successfull");

				for (User u : userlist) {
					model.addAttribute("username", u.getUsername());
					model.addAttribute("useremail", u.getEmail());
				}
				return "redirect:/dashboard";
			}
		} else if (user.getSubmit().equals("Register")) {

			if (user.getUsername() == null || user.getPassword() == null || user.getEmail() == null) {
				return "index";
			}

			if (user.getRepassword().equals(user.getPassword())) {
				if (userservices.saveOrUpdate(user)) {
					System.out.println("User Registration Successfull");
					model.addAttribute("username", user.getUsername());
					model.addAttribute("useremail", user.getEmail());
				}
				return "redirect:/dashboard";
			} else {
				return "index";
			}
		}

		return "index";
	}

	@RequestMapping("/logout")
	public String userLogout(HttpSession session, ModelMap model) {
		System.out.println("Logout Controller");
		session.invalidate();
		if (model.containsAttribute("username") || model.containsAttribute("useremail"))
			model.clear();
		return "index";
	}

}
