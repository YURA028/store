package com.spring.website.controllers.security;

import com.spring.website.security.details.UserDetailsImpl;
import com.spring.website.dto.UserDto;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import static com.spring.website.dto.UserDto.form;

@Controller
public class ProfileController {

    @GetMapping("/")
    public String getProfilePage(ModelMap model, Authentication authentication){
        if (authentication == null){
            return "security/login";
        }
        UserDetailsImpl details = (UserDetailsImpl)authentication.getPrincipal();
        UserDto user = form(details.getUser());
        model.addAttribute("user", user);
        return "security/profile";
    }
}
