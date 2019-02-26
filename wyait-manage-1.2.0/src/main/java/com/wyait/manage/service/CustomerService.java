package com.wyait.manage.service;

import com.wyait.manage.pojo.Customer;

import java.util.List;

public interface CustomerService {
    public List<Customer> getCustomerList(Customer customer) throws Exception;

    public Customer getCustomerById(Customer customer) throws Exception;

    public int addCustomer(Customer customer) throws Exception;

    public int deleteCustomerById(Customer customer) throws Exception;

    public int updateCustomerById(Customer customer) throws Exception;
}
