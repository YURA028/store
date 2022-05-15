package com.spring.website.controllers;

import com.spring.website.models.Basket;
import com.spring.website.models.User;
import com.spring.website.repositories.BasketRepository;
import com.spring.website.services.BasketService;

import com.spring.website.services.ProductService;
import com.spring.website.services.UserService;
import com.spring.website.services.dto.BasketDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@Controller
public class BasketController {

    private final BasketService basketService;
    private final ProductService productService;
    private final UserService userService;

    private final BasketRepository basketRepository;

    @Autowired
    public BasketController(BasketService basketService, ProductService productService, UserService userService, BasketRepository basketRepository) {
        this.basketService = basketService;
        this.productService = productService;
        this.userService = userService;
        this.basketRepository = basketRepository;
    }

    @GetMapping("/basket1")
    public String getBasketUser(){
        return "orderItem";
    }

    @GetMapping("/basket")
    public String aboutBasket(Model model, Principal principal, Basket basket){

        User user = userService.getUserByPrincipal(principal);
        if (user.getBasket() == null){
            return "redirect:/";
        }

        if(principal == null){
            model.addAttribute("baskets", new BasketDTO());
        }else {
            BasketDTO basketDTO = basketService.getBasketByUser(principal.getName());
            model.addAttribute("baskets", basketDTO);
        }
//        model.addAttribute("baskets111", basket);
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        return "basket";
    }

    @GetMapping("/basket/product/{id}")
    public String getAddBasket(@PathVariable Long id, Principal principal, Model model) {
        if (principal == null) {
            return "redirect:/login";
        }
//        User user = productService.getUserByPrincipal(principal);
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        productService.addToUserBasket(id, principal);
        return "redirect:/basket";
    }

    @PostMapping("/basket/delete/{id}")
    public String deleteProduct(@PathVariable Long id, Principal principal) {
        basketService.deleteBasket(id, principal);
        return "redirect:/basket";
    }
    @PostMapping("/basket/deleteAll/{id}")
    public String deleteAllProduct(@PathVariable Long id, Principal principal) {
        basketService.deleteBasketAll(id, principal);
        return "redirect:/basket";
    }
//    @PostMapping("/basket/delete/{id}")
//    public String deleteProduct2(@PathVariable Long id, Principal principal) {
//        basketRepository.removeByPOrderByProductsId(id);
//        return "redirect:/";
//    }

}
