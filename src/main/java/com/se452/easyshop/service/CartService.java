package com.se452.easyshop.service;

import com.se452.easyshop.model.Cart;

/**
 *
 * @author duely
 */
public interface CartService {
    
    Cart getCartById (int cartId);
    
    void update(Cart cart);
}
