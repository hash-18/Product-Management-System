package productCrud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productCrud.model.Product;
import productCrud.service.ProductService;

@Controller
public class MainController {

	@Autowired
	public ProductService productService;

	@RequestMapping("/")
	public String home(Model m) {
		List<Product> products = productService.loadAllProducts();
		m.addAttribute("products", products);
		return "homepage";
	}

//Handler to show product form
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add Product Page");
		m.addAttribute("product", new Product());
		return "add_product_form";
	}

	// Handler to add product from form
	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct( @Valid @ModelAttribute Product product, BindingResult result,  HttpServletRequest request)
	{
		RedirectView redirectView = new RedirectView();
		if(result.hasErrors())
		{
			redirectView.setUrl(request.getContextPath() + "/add-product");	
			return redirectView;
		}
		this.productService.createProduct(product);
		
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	// Handler to aDelete product
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId, HttpServletRequest request )
	{
		productService.delete(productId);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	//Redirected here when clicked on Edit
	@RequestMapping("/update/{productId}")
	public String updateProductForm(@PathVariable("productId") int productId, Model m)
	{
		Product product=this.productService.getProduct(productId);
		m.addAttribute("product", product);	
		return "update_form";
	}
}