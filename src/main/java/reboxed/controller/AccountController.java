package reboxed.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import reboxed.model.Accounts;
import reboxed.service.AccountService;

@Controller
@SessionAttributes({"accounts"})
public class AccountController {
	
	@Autowired
	private AccountService as;
	
	@GetMapping("/")
	public String home() {
		return "index";
	}

	@GetMapping("/register")
	public String register(Model m) {
		m.addAttribute("accounts", new Accounts());
		return "register";
	}
	
	@PostMapping("/register")
	public String check(@Valid @ModelAttribute("accounts") Accounts acc, BindingResult br) {
		if(br.hasErrors())
			return "register";
		as.save(acc);
		return "success";
	}
	
	@GetMapping("/login")
	public String login(Model m) {
		return "login";
	}
	
	@PostMapping("/login")
	public String checkLogin(@RequestParam("identifier") String userId, @RequestParam("password") String password, HttpSession ses) {
		Accounts acc = as.checkLogin(userId, password);
		ses.setAttribute("accounts", acc);
		return "redirect:/";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession ses) {
		ses.removeAttribute("accounts");
		ses.invalidate();
		return "index";
	}
	
	@GetMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	
	@PostMapping("/contact")
	public String contactSuc() {
		return "contactsuccess";
	}
}
