package productCrud.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import productCrud.dao.ProductDao;
import productCrud.model.Product;

@Service
public class ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	@Transactional
	public void createProduct(Product product)
	{
		productDao.createProduct(product);
	}
	
	public List<Product> loadAllProducts()
	{
		return productDao.loadAllProducts();
	}
	
	//Get a product by it's id
	public Product getProduct(int pid)
	{
		return productDao.getProduct(pid);
	}
	
	//Delete a product
	@Transactional
	public void delete(int pid)
	{
		productDao.delete(pid);
	}
	

}
