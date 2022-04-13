//package com.spring.website.controller;
//
//import com.spring.website.model.User;
//import com.spring.website.service.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.util.List;
//
//@Controller
//@RequestMapping("/user")
//public class UserController {
//
//    @Autowired
//    private UserService userService;
//
//    @GetMapping("/list")
//    public String listCustomers(Model theModel) {
//        List <User> theUser = userService.getUser();
//        theModel.addAttribute("users", theUser);
//        return "list-customers";
//    }
//
//    @GetMapping("/showForm")
//    public String showFormForAdd(Model theModel) {
//        User theUser = new User();
//        theModel.addAttribute("user", theUser);
//        return "customer-form";
//    }
//
//    @PostMapping("/saveUser")
//    public String saveCustomer(@ModelAttribute("user") User theUser) {
//        userService.saveUser(theUser);
//        return "redirect:/user/list";
//    }
//
//    @GetMapping("/updateForm")
//    public String showFormForUpdate(@RequestParam("userId") Long theId,
//                                    Model theModel) {
//        User theUser = userService.getUser(theId);
//        theModel.addAttribute("user", theUser);
//        return "customer-form";
//    }
//
//    @GetMapping("/delete")
//    public String deleteUser(@RequestParam("userId") Long theId) {
//        userService.deleteUser(theId);
//        return "redirect:/user/list";
//    }
//}
