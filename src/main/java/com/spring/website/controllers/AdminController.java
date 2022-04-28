package com.spring.website.controllers;

import com.spring.website.models.User;
import com.spring.website.models.enums.Role;
import com.spring.website.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;


@Controller
@RequiredArgsConstructor
//@PreAuthorize("hasAuthority('ADMIN')")
public class AdminController {

    private final UserService userService;

    @GetMapping("/admin")
    public String admin(Model model){
        model.addAttribute("users", userService.getUserList());
        return "security/admin";
    }

    @PostMapping("/admin/user/ban/{id}")
    private String userBan(@PathVariable("id") Long id){
        userService.banUser(id);
        return "redirect:/admin";
    }


    @PostMapping("/admin/user/edit/{id}")
    public String userEdit(@PathVariable("id") Long id) {
        userService.roleUser(id);
        return "redirect:/admin";
    }
}
