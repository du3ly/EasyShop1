package com.se452.easyshop.dao;

import com.se452.easyshop.model.Product;
import java.util.List;

/**
 *
 * @author duely
 */
public interface ProductDao {
    
    void addProduct(Product product);
    
    Product getProductById(String id);
    
    List<Product> getAllProducts();
    
    void deleteProduct(String id);
}