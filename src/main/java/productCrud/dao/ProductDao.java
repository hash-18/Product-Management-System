package productCrud.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;


import productCrud.model.Product;

@Repository
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createProduct(Product product)
	{
		this.hibernateTemplate.saveOrUpdate(product);
	}
	//Get all products
	public List<Product> loadAllProducts()
	{
		List<Product> products= this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//Get a product by it's id
	public Product getProduct(int pid)
	{
		Product product=this.hibernateTemplate.get(Product.class, pid);
		return product;
	}
	
	//Delete a product
	@Transactional
	public void delete(int pid)
	{
		Product product=this.hibernateTemplate.get(Product.class,pid);
		this.hibernateTemplate.delete(product);
	}
	

}
