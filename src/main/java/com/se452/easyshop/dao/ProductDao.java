package com.se452.easyshop.dao;

import com.se452.easyshop.model.Product;
import java.util.List;

/**
 *
 * @author duely
 */
public interface ProductDao {
    
    void addProduct(Product product);
    
    void editProduct(Product product);
    
    Product getProductById(int id);
    
    List<Product> getAllProducts();
    
    void deleteProduct(int id);
}