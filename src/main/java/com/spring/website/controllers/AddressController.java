package com.spring.website.controllers;

import com.spring.website.models.User;
import com.spring.website.services.AddressService;
import com.spring.website.services.UserService;
import com.spring.website.services.dto.AddressDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
public class AddressController {

    private final UserService userService;
    private final AddressService addressService;

    @Autowired
    public AddressController(UserService userService, AddressService addressService) {
        this.userService = userService;
        this.addressService = addressService;
    }

    @GetMapping("/user/address")
    public String getAddressPage(Model model, Principal principal){
        User user = userService.getUserByPrincipal(principal);
        if (user.getAddress() != null){
            AddressDTO addressDTO = AddressDTO.form(user.getAddress());
            model.addAttribute("address", addressDTO);
        }
        model.addAttribute("userPrincipal", userService.getUserByPrincipal(principal));
        return "profile-address";
    }

    @PostMapping("/user/address/add")
    public String addAddress(AddressDTO addressDTO, Principal principal){
        if (principal == null){
            return "redirect:/user/address";
        }
        addressService.saveAddress(addressDTO, principal);
        return "redirect:/profile";
    }

}
