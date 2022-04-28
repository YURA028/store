package com.spring.website.controllers.sec;

import com.spring.website.dto.UserFormDto;
import com.spring.website.models.User;
import com.spring.website.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SignUpController {


    private final UserService userService;
    @Autowired
    public SignUpController(UserService userService) {
        this.userService = userService;
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

//    @GetMapping("/signUp")
//    public String getSignUpPage(Model model) {
//        model.addAttribute("formUser", new UserFormDto());
//        return "security/signUp";
//    }
//
//    @PostMapping("/signUp")
//    public String signUp(UserFormDto userForm, User user, Model model) {
//        if (service.findByEmail(user.getEmail()) != null ) {
//            return "security/signUp";
//        }
//        service.signUp(userForm);
//        return "security/login";
//    }

}
