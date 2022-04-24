package com.spring.website.controllers;

import com.spring.website.models.Product;
import com.spring.website.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/product2")
public class ProductController {

    @Autowired
    private ProductService productService;


    @GetMapping("/list")
    public String listProduct(Model model){
        List<Product> products = productService.getProduct();
        model.addAttribute("products", products);
        return "test/product-list";
    }

//    @GetMapping("/showForm")
//    public String showFormForAdd(Model model){
//        Product product = new Product();
//        model.addAttribute("product", new ProductFormDto());
//        return "product-form";
//    }
//
//    @PostMapping("/saveProduct")
//    public String saveProduct (@ModelAttribute("product") Product product, ProductFormDto productFormDto){
//        productService.saveProduct(productFormDto);
//        return "redirect:/product/list";
//    }
    @GetMapping("/showForm")
    public String showFormForAdd(Model model){
        Product product = new Product();
        model.addAttribute("product", product);
        return "test/product-form";
    }

    @PostMapping("/saveProduct")
    public String saveProduct (@ModelAttribute("product") Product product){
        productService.saveProduct(product);
        return "redirect:/product2/list";
    }



    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("productId") Long id, Model model){
        Product product = productService.editProduct(id);
        model.addAttribute("product", product);
        return "test/product-form";
    }

    @GetMapping("/delete")
    public String deleteProduct(@RequestParam("productId") Long id){
        productService.deleteProduct(id);
        return "redirect:/product2/list";
    }

}
