package com.se452.easyshop.dao;

import com.se452.easyshop.model.Customer;
import java.util.List;

/**
 *
 * @author Camille
 */

public interface CustomerDao {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);

}
