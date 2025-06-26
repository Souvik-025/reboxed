package reboxed.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import reboxed.exception.AccountNotFoundException;
import reboxed.model.Accounts;
import reboxed.repository.AccountRepo;

@Service
public class AccountService {

	@Autowired
	private AccountRepo ar;
	
	public void save(Accounts acc) {
		ar.save(acc);
	}
	
	public Accounts checkLogin(String userId, String password) {
		Accounts acc = ar.login(userId, userId, password);
		if(acc == null)
			throw new AccountNotFoundException("Wrong Email/Phone or Password");
		return acc;
	}
}
