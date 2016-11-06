package com.se452.easyshop.controller;

import com.se452.easyshop.dao.ProductDao;
import com.se452.easyshop.model.Product;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

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
    public String viewProduct(@PathVariable int productId, Model model) throws IOException {
        
        Product product = productDao.getProductById(productId);
        model.addAttribute(product);
        
        return "viewProduct";
    }
    
    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }
    
    @RequestMapping("/admin/productInventory")
    public String productInventory(Model model){
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);
        return "productInventory";
    }
    
    @RequestMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model){
        Product product = new Product();
        product.setProductCategory("category");
        product.setProductGender("gender");
        model.addAttribute("product", product);
        return "addProduct";
    }
    
    @RequestMapping(value="/admin/productInventory/addProduct", method=RequestMethod.POST) 
    public String addProductPost(@ModelAttribute("product") Product product) { 
        productDao.addProduct(product);        
        
//        MultipartFile productImage = product.getProductImage();
//        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
//        path = Paths.get(rootDirectory + "\\WEB-INF\\images\\" + product.getProductId() + ".png");
//        
//        // Checks to see if there is an image
//        if(productImage != null && !productImage.isEmpty()) {
//            try {
//                productImage.transferTo(new File(path.toString()));
//            } catch (Exception e) {
//                e.printStackTrace();
//                throw new RuntimeException("Upload failed",e);
//            }
//        }
        
        return "redirect:/admin/productInventory"; 
     } 
    
    @RequestMapping("/admin/productInventory/deleteProduct/{id}")
    public String deleteProduct(@PathVariable String id, Model model){
        productDao.deleteProduct(Integer.parseInt(id));
        
        return "redirect:/admin/productInventory";         
    }
    
    @RequestMapping("/admin/productInventory/editProduct/{id}")
    public String editProduct(@PathVariable String id, Model model) {
        Product product = productDao.getProductById(Integer.parseInt(id));
        
        model.addAttribute(product);
        
        return "editProduct";
    }
    
    @RequestMapping(value="/admin/productInventory/editProduct", method = RequestMethod.POST)
    public String editProduct(@ModelAttribute("product") Product product, Model model, HttpServletRequest request) {
          productDao.editProduct(product); /* DELETE this when image upload is fixed*/
          
//        MultipartFile productImage = product.getProductImage();
//        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
//        path = Paths.get(rootDirectory + "\\WEB-INF\\images\\" + product.getProductId() + ".png");
//
//        if (productImage != null && !productImage.isEmpty()) {
//            try {
//                productImage.transferTo(new File(path.toString));
//            } catch (Exception e) {
//                throw new RuntimeException("Save failed", e);
//            }
//
//            productDao.editProduct(product);
//        }
        return "redirect:/admin/productInventory";
    }
    
}









  