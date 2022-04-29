package com.spring.website.controllers.sec;

import com.spring.website.security.details.UserDetailsImpl;
import com.spring.website.dto.UserDto;
import com.spring.website.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

import static com.spring.website.dto.UserDto.form;

@Controller
public class ProfileController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String getProfilePage(ModelMap model, Authentication authentication, Principal principal) {
        if (authentication == null) {
            return "security/login";
        }
        UserDetailsImpl details = (UserDetailsImpl) authentication.getPrincipal();

        UserDto user = form(details.getUser());
        model.addAttribute("user", user);
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "security/profile";
    }
}