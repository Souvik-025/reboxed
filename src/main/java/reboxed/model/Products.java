package reboxed.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Pattern;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Products {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Integer pId;
	
	@Column(name = "product_name", nullable = false)
	@Pattern(regexp = "^[A-Za-z0-9 ]+$", message = "Enter valid name of the product")
	private String pName;
	
	
	private Double price;
	
	private Boolean sold;
	
	@ManyToOne
	@JoinColumn
	private Accounts accounts;

}
