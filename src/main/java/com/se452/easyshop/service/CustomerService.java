package com.se452.easyshop.service;

import com.se452.easyshop.model.Customer;
import java.util.List;

/**
 *
 * @author Camille
 */

public interface CustomerService {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);
    
}