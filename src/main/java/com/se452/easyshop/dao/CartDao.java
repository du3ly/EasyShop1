package com.se452.easyshop.dao;

import com.se452.easyshop.model.Cart;
import java.io.IOException;

/**
 *
 * @author duely
 */
public interface CartDao {

    public Cart getCartById(int cartId);
    
    public Cart validate(int cartId) throws IOException;

    public void update(Cart cart);
}
