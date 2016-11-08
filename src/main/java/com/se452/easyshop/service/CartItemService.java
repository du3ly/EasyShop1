/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.se452.easyshop.service;

import com.se452.easyshop.model.Cart;
import com.se452.easyshop.model.CartItem;

/**
 *
 * @author duely
 */
public interface CartItemService {
    
    void addCartItem(CartItem cartItem);
    
    void removeCartItem(CartItem cartItem);
    
    void removeAllCartItems(Cart cart);
    
    CartItem getCartItemByProductId (int productId);
}
