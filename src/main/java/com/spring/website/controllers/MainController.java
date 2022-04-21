package com.spring.website.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/1")
    public String home (Model model){
        model.addAttribute("title", "домашняя строничка");
        return "home";
    }
    @GetMapping("/about")
    public String about (Model model){
        model.addAttribute("title", "страница про нас");
        return "about";
    }
}
