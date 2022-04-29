package com.spring.website.controllers;

import com.spring.website.repositories.UserRepository;
import com.spring.website.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class UsersController {


    private final UserRepository usersRepository;

    private final UserService userService;


    @GetMapping("/users")
    public String getUsersPage(ModelMap model, Principal principal) {
        model.addAttribute("usersFromServer", usersRepository.findAll());
        model.addAttribute("userPrincipal", userService.getUserByPrincipal(principal));
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
