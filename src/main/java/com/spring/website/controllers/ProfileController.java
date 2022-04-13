package com.spring.website.controllers;

import com.spring.website.security.details.UserDetailsImpl;
import com.spring.website.transfer.UserDto;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import static com.spring.website.transfer.UserDto.form;

@Controller
public class ProfileController {

    @GetMapping("/")
    public String getProfilePage(ModelMap model, Authentication authentication){
        if (authentication == null){
            return "redirect:/login";
        }
        UserDetailsImpl details = (UserDetailsImpl)authentication.getPrincipal();
        UserDto user = form(details.getUser());
        model.addAttribute("user", user);
        return "profile";
    }
}
