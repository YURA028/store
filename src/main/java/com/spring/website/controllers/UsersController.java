package com.spring.website.controllers;

import com.spring.website.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UsersController {

    @Autowired
    private UserRepository usersRepository;


    @GetMapping("/users")
    public String getUsersPage(ModelMap model) {

        model.addAttribute("usersFromServer", usersRepository.findAll());

        return "users";
    }

    @GetMapping("/test")
    public String getSignUpPage2222() {
        return "test/test";
    }

    @GetMapping("/orderItem")
    public String getSignUpPage22() {
        return "orderItem";
    }
}
