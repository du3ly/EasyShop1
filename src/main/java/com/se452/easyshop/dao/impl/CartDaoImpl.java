package com.se452.easyshop.dao.impl;

import com.se452.easyshop.dao.CartDao;
import com.se452.easyshop.model.Cart;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author duely
 */
@Repository
@Transactional
public class CartDaoImpl implements CartDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    
    public Cart getCartById (int cartId) {
        Session session = sessionFactory.getCurrentSession();
        return (Cart) session.get(Cart.class, cartId);
    }
    
    public void update(Cart cart) {
        int cartId = cart.getCartId();
    }
}
