package com.wyait.manage.service;

import com.wyait.manage.dao.CustomerMapper;
import com.wyait.manage.pojo.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerMapper customerMapper;

    @Override
    public List<Customer> getCustomerList(Customer customer) throws Exception {
        return customerMapper.getCustomerList(customer);
    }

    @Override
    public Customer getCustomerById(Customer customer) throws Exception {
        return customerMapper.getCustomerById(customer);
    }

    @Override
    public int addCustomer(Customer customer) throws Exception {
        return customerMapper.addCustomer(customer);
    }

    @Override
    public int deleteCustomerById(Customer customer) throws Exception {
        return customerMapper.deleteCustomerById(customer);
    }

    @Override
    public int updateCustomerById(Customer customer) throws Exception {
        return customerMapper.updateCustomerById(customer);
    }
}
