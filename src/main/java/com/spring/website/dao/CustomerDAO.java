package com.spring.website.dao;

import java.util.List;

import com.spring.website.model.Customer;

public interface CustomerDAO {

    public List <Customer> getCustomers();

    public void saveCustomer(Customer theCustomer);

    public Customer getCustomer(int theId);

    public void deleteCustomer(int theId);
}