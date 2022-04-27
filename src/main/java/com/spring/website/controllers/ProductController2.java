package com.spring.website.controllers;

import com.spring.website.models.Product;
import com.spring.website.repositories.ProductRepository;
import com.spring.website.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class ProductController2 {


    @Autowired
    private ProductService productService;
    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/product")
    public String blogMain(Model model) {
        List<Product> products = productRepository.findAll();
        model.addAttribute("posts", products);
        return "product/product-main";
    }

    @GetMapping("product/add")
    public String blogAdd(Model model) {
        return "product/product-add";
    }

    @PostMapping("product/add")
    public String blogPostAdd(@RequestParam String name, @RequestParam String serialNumber,
                              @RequestParam String color, Model model) {
        Product product = new Product(name, color, serialNumber);
        productRepository.save(product);
        return "redirect:/product";
    }

    @GetMapping("/product/{id}")
    public String blogDetails(@PathVariable(value = "id") long id, Model model) {
        if (!productRepository.existsById(id)) {
            return "redirect:/product";
        }
        Optional<Product> product = productRepository.findById(id);
        Product product1 = productService.getProductById(id);
        ArrayList<Product> res = new ArrayList<>();
        product.ifPresent(res::add);
        model.addAttribute("post", res);
        model.addAttribute("images", product1.getImageProducts());
        return "product/product-details";
    }

    @GetMapping("/product/{id}/edit")
    public String blogEdit(@PathVariable(value = "id") long id, Model model) {
        if (!productRepository.existsById(id)) {
            return "redirect:/product";
        }
        Optional<Product> product = productRepository.findById(id);
        ArrayList<Product> res = new ArrayList<>();
        product.ifPresent(res::add);
        model.addAttribute("post", res);
        return "product/product-edit";
    }

    @PostMapping("/product/{id}/edit")
    public String blogPostUpDate(@PathVariable(value = "id") long id,
                                 @RequestParam String name,
                                 @RequestParam String color,
                                 @RequestParam String serialNumber, Model model) {
        Product product = productRepository.findById(id).orElseThrow();
        product.setName(name);
        product.setColor(color);
        product.setSerialNumber(serialNumber);
        productRepository.save(product);
        return "redirect:/product";
    }

    @PostMapping("/product/{id}/remove")
    public String blogPostDelete(@PathVariable(value = "id") long id, Model model) {
        Product product = productRepository.findById(id).orElseThrow();
        productRepository.delete(product);
        return "redirect:/product";
    }

}

