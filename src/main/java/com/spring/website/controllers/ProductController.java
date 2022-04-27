package com.spring.website.controllers;

import com.spring.website.models.Product;
import com.spring.website.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/product2")
public class ProductController {

    @Autowired
    private ProductService productService;


//    @GetMapping("/list")
//    public String listProduct(Model model) {
//        List<Product> products = productService.getProduct();
//        model.addAttribute("products", products);
//        return "test/product-list";
//    }

    @GetMapping("/list")
    public String listProductName(@RequestParam(name = "name", required = false) String name, Model model) {
        model.addAttribute("products", productService.getProductName(name));
        return "test/product-list";
    }
    @GetMapping("/info")
    public String productInfo(@RequestParam(value = "productId") Long id, Model model){
        Product product = productService.getProductById(id);
        model.addAttribute("productIndex", product);
        model.addAttribute("images", product.getImageProducts());
        return "test/product-index";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model model) {
        Product product = new Product();
        model.addAttribute("product", product);
        return "test/product-form";
    }

    @PostMapping("/saveProduct")
    public String saveProduct(@RequestParam("file1") MultipartFile file1,
//                              @RequestParam("file2") MultipartFile file2,
//                              @RequestParam("file3") MultipartFile file3,
                              @ModelAttribute("product") Product product) throws IOException {
        productService.saveProduct(product, file1);
        return "redirect:/product2/list";
    }
//    @PostMapping("/saveProduct")
//    public String saveProduct(@ModelAttribute("product") Product product) {
//        productService.saveProduct(product);
//        return "redirect:/product2/list";
//    }


    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("productId") Long id,
                                    @RequestParam("file1") MultipartFile file1,
                                    Model model) {
        Product product = productService.editProduct(id);
        model.addAttribute("product", product);
        return "test/product-form";
    }

    @GetMapping("/delete")
    public String deleteProduct(@RequestParam("productId") Long id) {
        productService.deleteProduct(id);
        return "redirect:/product2/list";
    }

}
