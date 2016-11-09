package com.se452.easyshop.service;
import com.se452.easyshop.model.CustomerOrder;
/**
 *
 * @author Camille
 */


public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}