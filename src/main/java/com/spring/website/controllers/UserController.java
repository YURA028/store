package com.spring.website.controllers;

import com.spring.website.dto.UserFormDto;
import com.spring.website.models.User;
import com.spring.website.repositories.UserRepository;
import com.spring.website.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @Autowired
    private UserRepository usersRepository;

    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String getLoginPage(Authentication authentication, Model model, HttpServletRequest request) {
        if (authentication != null) {
            return "redirect:/";
        }
        if (request.getParameterMap().containsKey("error")) {
            model.addAttribute("error", true);
        }
        return "security/login";
    }

    @GetMapping("/signUp")
    public String getSignUpPage(Model model) {
        model.addAttribute("formUser", new UserFormDto());
        return "security/signUp";
    }

    @PostMapping("/signUp")
    public String signUp(UserFormDto userForm, User user, Model model) {
        if (!userService.emailVerification(userForm)) {
            model.addAttribute("errorMessage", "Пользователь с email: " + user.getEmail() + " уже существует");
            return "security/signUp";
        }
        userService.signUp(userForm);
        return "redirect:/login";
    }

    @GetMapping("/user/{user}")
    public String userInfo(@PathVariable("user") User user, Model model){
        model.addAttribute("user", user);
        return "security/user-info";
    }
}
