package reboxed.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Accounts {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Integer aId;
	
	@Column(name = "user_name", nullable = false)
	private String aName;
	
	@Email(message = "Email Required And Provide A Valid Email")
	@Column(nullable = false, unique = true)
	private String email;
	
	@Pattern(regexp = "^[4-9]+[0-9]{9}$", message = "Enter Valid Phone Number")
	@Size(max = 10, min = 10, message = "Phone Number Must Contain 10 Digits")
	@Column(nullable = false, unique = true)
	private String phoneNumber;
	
	@Size(max = 16, min = 8, message = "Provide A Password Between 8 And 16")
	@Pattern(
		    regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$",
		    message = "Password must be at least 8 characters and include uppercase, lowercase, number, and special character"
		)
	@Column(nullable = false)
	private String password;

	@OneToMany(mappedBy = "accounts", cascade = CascadeType.ALL)
	@Column(name = "user_prod")
	private List<Products> products;
	
	
}
