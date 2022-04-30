package com.spring.website.controllers;

import com.spring.website.services.dto.UserFormDto;
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
import java.security.Principal;

@Controller
public class UserController {
    @Autowired
    private UserRepository usersRepository;

    @Autowired
    private UserService userService;


    @GetMapping("/login")
    public String getLoginPage(Authentication authentication, Model model, HttpServletRequest request, Principal principal) {
        if (authentication != null) {
            return "redirect:/";
        }
        if (request.getParameterMap().containsKey("error")) {
            model.addAttribute("error", true);
        }
        model.addAttribute("userPrincipal", userService.getUserByPrincipal(principal));
        return "login";
    }

    @GetMapping("/profile")
    public String getProfilePage(Principal principal, Model model) {
        User user = userService.getUserByPrincipal(principal);
        model.addAttribute("user", userService.getUserList());
        model.addAttribute("userPrincipal", user);
        return "profile";
    }
//    @GetMapping("/profile")
//    public String getProfilePage(ModelMap model, Authentication authentication, Principal principal) {
//        if (authentication == null) {
//            return "login";
//        }
//        UserDetailsImpl details = (UserDetailsImpl) authentication.getPrincipal();
//
//        UserDto user = form(details.getUser());
//        model.addAttribute("user", user);
//        model.addAttribute("user", userService.getUserByPrincipal(principal));
//        return "profile";
//    }

    @GetMapping("/signUp")
    public String getSignUpPage(Model model, Principal principal) {
        model.addAttribute("formUser", new UserFormDto());
        model.addAttribute("userPrincipal", userService.getUserByPrincipal(principal));
        return "signUp";
    }

    @PostMapping("/signUp")
    public String signUp(UserFormDto userForm, User user, Model model) {
        if (!userService.emailVerification(userForm)) {
            model.addAttribute("errorMessage", "Пользователь с email: " + user.getEmail() + " уже существует");
            return "signUp";
        }
        userService.signUp(userForm);
        return "redirect:/login";
    }

    @GetMapping("/user/{user}")
    public String userInfo(@PathVariable("user") User user, Model model, Principal principal){
        model.addAttribute("user", user);
        model.addAttribute("products", user.getProducts());
        model.addAttribute("userPrincipal", userService.getUserByPrincipal(principal));
        return "user-info";
    }
}
