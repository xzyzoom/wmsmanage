package com.wyait.manage.dao;

import com.wyait.manage.pojo.Customer;

import java.util.List;

/**
 * 客户信息
 */
public interface CustomerMapper {
    public List<Customer> getCustomerList(Customer customer) throws Exception;

    public Customer getCustomerById(Customer customer) throws Exception;

    public int addCustomer(Customer customer) throws Exception;

    public int deleteCustomerById(Customer customer) throws Exception;

    public int updateCustomerById(Customer customer) throws Exception;
}
