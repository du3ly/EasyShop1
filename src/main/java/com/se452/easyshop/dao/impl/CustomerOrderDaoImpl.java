package com.se452.easyshop.dao.impl;
import com.se452.easyshop.dao.CustomerOrderDao;
import com.se452.easyshop.model.CustomerOrder;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Camille
 */

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao{

        @Autowired
        private SessionFactory sessionFactory;

        public void addCustomerOrder(CustomerOrder customerOrder) {
            Session session = sessionFactory.getCurrentSession();
            session.saveOrUpdate(customerOrder);
            session.flush();
        }
}