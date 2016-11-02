package com.se452.easyshop.dao;

import com.se452.easyshop.model.Product;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author duely
 */
public class ProductDao {
    
    private List<Product> productList;
    
    public List<Product> getProductList() {
        Product product1 = new Product(); 
        product1.setProductId(100);
        product1.setProductName("Yeezy");
        product1.setProductBrand("Adidas");
        product1.setProductDescription("Hypebeast, all over this!");
        product1.setProductCategory("Shoes");
        product1.setProductGender("Men");
        product1.setProductPrice(1000);
        
        Product product2 = new Product();   
        product2.setProductId(101);
        product2.setProductName("Jordan Retro IV");
        product2.setProductBrand("Nike");
        product2.setProductDescription("Must buy! Cements");
        product2.setProductCategory("Shoes");
        product2.setProductGender("Men");
        product2.setProductPrice(300);
        
        productList=new ArrayList<>();
        productList.add(product1);
        productList.add(product2);
        
        return productList;
    }
    
    public Product getProductById(String productId) throws IOException {
        for(Product product: getProductList()) {
            if(product.getProductId().equals(productId)) {
                return product;
            }
        }
        
        throw new IOException("No product found.");
    }
}
