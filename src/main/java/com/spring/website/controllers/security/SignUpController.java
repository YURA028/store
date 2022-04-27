package com.spring.website.controllers.security;

import com.spring.website.dto.UserFormDto;
import com.spring.website.models.User;
import com.spring.website.repositories.UserRepository;
import com.spring.website.services.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SignUpController {

    @Autowired
    private UserRepository usersRepository;

    @Autowired
    private SignUpService service;


    @GetMapping("/signUp")
    public String getSignUpPage(Model model) {
        model.addAttribute("formUser", new UserFormDto());
        return "security/signUp";
    }

    @PostMapping("/signUp")
    public String signUp(UserFormDto userForm, User user, Model model) {
        if (service.findByLogin(user.getLogin()) != null ) {
            return "security/signUp";
        }
        service.signUp(userForm);
        return "security/login";
    }

}
