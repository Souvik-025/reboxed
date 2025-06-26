package reboxed.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(AccountNotFoundException.class)
	public String loginError(AccountNotFoundException an, Model m) {
		m.addAttribute("exception", an.getMessage());
		return "login";
	}
	
	
	@ExceptionHandler(Exception.class)
	public String error(RuntimeException re, Model m) {
		m.addAttribute("exception", re.getMessage());
		return "error";
		
	}
	
}
