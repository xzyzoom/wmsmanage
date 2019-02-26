package com.wyait.manage.web;

import com.wyait.manage.pojo.Customer;
import com.wyait.manage.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @RequestMapping(value = "/customerList")
    public ModelAndView getCustomerList(Customer customer){
        List<Customer> getCustomerList =null;
        try {
            getCustomerList=  customerService.getCustomerList(customer);
        } catch (Exception e) {
            e.printStackTrace();
        }
        ModelAndView mv = new ModelAndView();
        mv.addObject("customer",getCustomerList);
        mv.setViewName("customerList");
        return mv;
    }
}
