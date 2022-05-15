package com.spring.website.controllers;

import com.spring.website.services.dto.UserDTO;
import com.spring.website.services.dto.UserFormDTO;
import com.spring.website.models.User;
import com.spring.website.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.Objects;

@Controller
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }


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
    public String getProfilePage(Authentication authentication, Principal principal, Model model) {
        if (authentication == null) {
            return "redirect:/login";
        }
        User user = userService.getUserByPrincipal(principal);
        UserDTO userDTO = UserDTO.builder()
                .firstName(user.getFirstName())
                .email(user.getEmail())
                .username(user.getUsername())
                .build();
        model.addAttribute("users", userDTO);
        model.addAttribute("userPrincipal", userService.getUserByPrincipal(principal));
        return "profile";
    }

    @GetMapping("/profile/edit")
    public String getProfileUser(Principal principal, Model model) {
        if (principal == null) {
            throw new RuntimeException("You are not authorize1");
        }

        User user = userService.getUserByPrincipal(principal);
        UserDTO userDTO = UserDTO.builder()
                .firstName(user.getFirstName())
                .email(user.getEmail())
                .username(user.getUsername())
                .build();
        model.addAttribute("users", userDTO);
        model.addAttribute("userPrincipal", userService.getUserByPrincipal(principal));

        return "profile-edit";
    }

    @PostMapping("/profile/edit")
    public String updateProfileUser(UserDTO userDTO, Model model, Principal principal) {
        if (principal == null || Objects.equals(principal.getName(), userDTO.getUsername())) {
            throw new RuntimeException("You are not authorized2");
        }
        if (userDTO.getPassword() != null
                && !userDTO.getPassword().isEmpty()
                && !Objects.equals(userDTO.getPassword(), userDTO.getMatchingPassword())) {
            model.addAttribute("user", userDTO);
            return "profile-edit";
        }
        userService.updateProfile(userDTO);
        return "redirect:/profile";
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
        if (principal != null) {
            return "redirect:/profile";
        }
        model.addAttribute("formUser", new UserFormDTO());
        model.addAttribute("userPrincipal", userService.getUserByPrincipal(principal));
        return "signUp";
    }

    @PostMapping("/signUp")
    public String signUp(UserFormDTO userForm, Model model, BindingResult result) {
        if (result.hasErrors()) {
            return "signUp";
        }

        if (!userService.emailVerification(userForm)) {
            model.addAttribute("errorMessageEmail", "Пользователь с email: " + userForm.getEmail() + " уже существует");
            model.addAttribute("formUser", userForm);
            return "signUp";
        }
        if (userService.findByUsername(userForm.getUsername()) != null) {
            model.addAttribute("errorMessageUsername", "Пользователь с email: " + userForm.getUsername() + " уже существует");
            model.addAttribute("formUser", userForm);
            return "signUp";
        }
        if (!Objects.equals(userForm.getPassword(), userForm.getMatchingPassword())) {
            model.addAttribute("errorMessagePassword", "Пароли не совпадают");
            model.addAttribute("formUser", userForm);
            return "signUp";
        }

        userService.signUp(userForm);
        return "redirect:/login";
    }

    @GetMapping("/user/{user}")
    public String userInfo(@PathVariable("user") User user, Model model, Principal principal) {
        model.addAttribute("user", user);
        model.addAttribute("products", user.getProducts());
        model.addAttribute("userPrincipal", userService.getUserByPrincipal(principal));
        return "user-info";
    }
}
