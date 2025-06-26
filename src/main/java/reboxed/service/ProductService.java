package reboxed.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import reboxed.model.Accounts;
import reboxed.model.ProductImages;
import reboxed.model.Products;
import reboxed.repository.ProductRepo;

@Service
public class ProductService {

	@Autowired
	private ProductRepo pr;
	
	@Autowired
	private ServletContext sc;
	
	public void saveProduct(Products prod, MultipartFile[] files, Accounts acc) {
		
		List<ProductImages> images = new ArrayList<ProductImages>();
		for(MultipartFile file : files) {
			ProductImages pm = saveProduct(file);
			pm.setProduct(prod);
			images.add(pm);
		}
		prod.setAccounts(acc);
		prod.setPImg(images);
		prod.setSold(false);
		pr.save(prod);
	}
	
	private ProductImages saveProduct(MultipartFile file) {
		try {
			byte[] bytes = file.getBytes();
			Path path = Paths.get(sc.getRealPath("/resources/productimages/"), file.getOriginalFilename());
			System.out.println("--------------------------");
			Files.write(path, bytes);
			ProductImages pm = new ProductImages();
			pm.setImageName(file.getOriginalFilename());
			pm.setImageUrl("/resources/productimages/" + file.getOriginalFilename());
			return pm;
		} catch ( Exception e) {
			System.out.println(e);
			return null;
		}
		
	}
}
