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
	
	@Pattern(regexp = "^[4-0]+[0-9]{9}$", message = "Enter Valid Phone Number")
	@Size(max = 10, min = 10)
	@Column(nullable = false, unique = true)
	private String phoneNumber;

	@OneToMany(mappedBy = "accounts", cascade = CascadeType.ALL)
	@Column(name = "user_prod")
	private List<Products> products;
	
	
}
