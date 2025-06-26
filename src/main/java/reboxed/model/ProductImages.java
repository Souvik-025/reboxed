package reboxed.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductImages {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Integer imgId;
	
	@Column(nullable = false)
	private String imageName;
	
	@Column(nullable = false)
	private String imageUrl;
	
	@ManyToOne
	@JoinColumn( nullable = false)
	private Products product;
}
