package reboxed.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import reboxed.model.Products;

@Repository
public interface ProductRepo extends JpaRepository<Products, Integer>{

	@Override
	public Products save(Products entity);
}
