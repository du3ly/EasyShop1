package com.se452.easyshop.service.impl;

import com.se452.easyshop.dao.CartDao;
import com.se452.easyshop.model.Cart;
import com.se452.easyshop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author duely
 */
@Service
public class CartServiceImpl implements CartService {
    
    @Autowired
    private CartDao cartDao;
    
    public Cart getCartById(int cartId) {
        return cartDao.getCartById(cartId);
    }
    
    public void update(Cart cart) {
        cartDao.update(cart);
    }
}
