package com.spring.website.controllers;

import com.spring.website.models.Product;
import com.spring.website.models.User;
import com.spring.website.repositories.ProductRepository;
import com.spring.website.services.ProductServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Optional;

@Controller
@RequiredArgsConstructor
//@RequestMapping("/main")
public class ProductController3 {

    private final ProductServiceImpl productService;

    private final ProductRepository productRepository;

    @GetMapping("/")
    public String getProducts(@RequestParam(name = "nameProduct", required = false) String name, Model model, Principal principal) {
        model.addAttribute("products", productService.getProductName(name));
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        model.addAttribute("nameProduct", name);
//        return "product2/products";
        return "products";
    }

    @GetMapping("/product/{id}")
    public String getProductInfo(@PathVariable Long id, Model model, Principal principal) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImageProducts());
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        model.addAttribute("authorProduct", product.getUser());
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1,
                                @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3,
                                Principal principal,
                                Product product) throws IOException {
        productService.saveProduct(principal, product, file1, file2, file3);
        return "redirect:/my/products";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/my/products";
    }

    @GetMapping("/my/products")
    public String getUserProducts(Principal principal, Model model) {
        User user = productService.getUserByPrincipal(principal);
        model.addAttribute("userPrincipal", user);
        model.addAttribute("products", user.getProducts());
        return "my-products";
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
        return "product-edit";
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
        return "redirect:/my/products";
    }
}
