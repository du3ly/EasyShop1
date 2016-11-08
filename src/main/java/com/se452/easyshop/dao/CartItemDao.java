package com.se452.easyshop.dao;

import com.se452.easyshop.model.Cart;
import com.se452.easyshop.model.CartItem;

/**
 *
 * @author duely
 */
public interface CartItemDao {
    
    void addCartItem(CartItem cartItem);
    
    void removeCartItem(CartItem cartItem);
    
    void removeAllCartItems(Cart cart);
    
    CartItem getCartItemByProductId(int productId);
}
