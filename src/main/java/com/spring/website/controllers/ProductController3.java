package com.spring.website.controllers;

import com.spring.website.models.Maker;
import com.spring.website.models.Product;
import com.spring.website.services.ProductService;
import com.spring.website.services.ProductService2;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
@RequestMapping("/main")
public class ProductController3 {

    private final ProductService2 productService;

    @GetMapping("/product")
    public String products(@RequestParam(name = "name", required = false) String name, Model model, Principal principal) {
        model.addAttribute("products", productService.listProducts(name));
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        return "product2/products";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImageProducts());
        return "product2/product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1,
                                @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3,
                                Principal principal,
                                Product product) throws IOException {
        productService.saveProduct(principal, product, file1, file2, file3);
        return "redirect:/main/product";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/main/product";
    }
}
