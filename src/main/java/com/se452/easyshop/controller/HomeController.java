package com.se452.easyshop.controller;

import com.se452.easyshop.dao.ProductDao;
import com.se452.easyshop.model.Product;
import java.io.IOException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author duely
 */
@Controller
public class HomeController {
    
    @Autowired
    private ProductDao productDao;
    
    @RequestMapping("/")
    public String index() { 
        return "index"; 
    }
    
    @RequestMapping("/productList")
    public String getProducts(Model model) {
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products",products);
        
        return "productList";
    }
    
    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable String productId, Model model) throws IOException {
        
        Product product = productDao.getProductById(productId);
        model.addAttribute(product);
        
        return "viewProduct";
    }
}