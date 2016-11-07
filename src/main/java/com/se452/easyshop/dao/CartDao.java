package com.se452.easyshop.dao;

import com.se452.easyshop.model.Cart;

/**
 *
 * @author duely
 */
public interface CartDao {
    
    Cart create(Cart cart);
    
    Cart read(String cartId);
    
    void update(String cartId, Cart cart);
    
    void delete(String cartId);
}
