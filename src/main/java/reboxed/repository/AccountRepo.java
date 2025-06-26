package reboxed.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import reboxed.model.Accounts;

@Repository
public interface AccountRepo extends JpaRepository<Accounts, Integer> {
	
	@Override
	Accounts save(Accounts entity);
	
	@Query("SELECT a FROM Accounts a WHERE (a.email = :email OR a.phoneNumber = :phoneNumber) AND a.password = :password")
	public Accounts login(@Param("email") String email,
            @Param("phoneNumber") String phoneNumber,
            @Param("password") String password);
}
