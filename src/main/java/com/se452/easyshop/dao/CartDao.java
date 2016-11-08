package com.se452.easyshop.dao;

import com.se452.easyshop.model.Cart;

/**
 *
 * @author duely
 */
public interface CartDao {

    public Cart getCartById(int cartId);

    public void update(Cart cart);
}
