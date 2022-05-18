package com.spring.website.controllers;

import com.spring.website.models.Product;
import com.spring.website.models.User;
import com.spring.website.repositories.MakerRepository;
import com.spring.website.repositories.ProductRepository;
import com.spring.website.services.ProductServiceImpl;
import com.spring.website.services.dto.ProductDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductController {

    private final ProductServiceImpl productService;
    private final ProductRepository productRepository;

    @Autowired
    public ProductController(ProductServiceImpl productService, ProductRepository productRepository) {
        this.productService = productService;
        this.productRepository = productRepository;
    }

    @GetMapping("/home")
    public String getHome(Principal principal, Model model) {
        model.addAttribute("products", productRepository.findAll());
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        return "home";
    }

    @GetMapping("/")
    public String getProducts(Model model, Principal principal) {
        model.addAttribute("products", productService.getProductName());
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        return "products";
    }

    //    @PreAuthorize("hasAuthority('ADMIN')")
//    @GetMapping("/{locale:en|ru|be}/product/{id}")
    @GetMapping(value = "/product/{id}")
    public String getProductInfo(@PathVariable Long id, Model model, Principal principal) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        model.addAttribute("images", product.getImageProducts());
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        model.addAttribute("authorProduct", product.getUser());
        return "product-info";
    }

////////////////////////////////////////////
    @PostMapping("/product/create/{number}")
    public String createProduct(@PathVariable int number,
                                @RequestParam("file1") MultipartFile file1,
                                @RequestParam("file2") MultipartFile file2,
                                Principal principal,
                                Product product) throws IOException {
        productService.saveProduct(principal, product, file1, file2);
        if (number == 1) {
            return "redirect:/my/products";
        }
        return "redirect:/";
    }

    ////////////////////////////////////////////
    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:/my/products";
    }
////////////////////////////////////////////
    @GetMapping("/my/products")
    public String getUserProducts(Principal principal, Model model) {
        User user = productService.getUserByPrincipal(principal);
        model.addAttribute("userPrincipal", user);
        model.addAttribute("products", user.getProducts());
        return "my-products";
    }
///////////////////////////////////////////////////
    @GetMapping("/product/{id}/edit")
    public String getProductEdit(@PathVariable Long id, Model model, Principal principal){
        Product product = productService.getProductById(id);
        ProductDTO productDTO = ProductDTO.form(product);
        model.addAttribute("productDTO", productDTO);
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        return "product-edit";
    }

    @PostMapping("/product/{id}/edit")
    public String updateProductEdit(@PathVariable Long id, ProductDTO productDTO, Model model, Principal principal){
        productService.updateProduct(productDTO, id);
        return "redirect:/my/products";
    }
    ////////////////////////////////////////////
    @GetMapping("/product/{id}/basket")
    public String getAddBasket(@PathVariable Long id, Principal principal, Model model) {
        if (principal == null) {
            return "redirect:/login";
        }
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        productService.addToUserBasket(id, principal);
        return "redirect:/";
    }
////////////////////////////////////////////
    @GetMapping("/filter")
    public String filterPage(@Param("filter") String filter,
                             @Param("productType") String productType,
                             @Param("maker") String maker, Model model, Principal principal) {
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        List<Product> productList = new ArrayList<>();
        List<Product> products = productService.getFilter(filter);
        if (filter != null) {
            model.addAttribute("products", products);
        } else {
            if (maker == null && productType != null) {
                List<Product> productTypes = productService.getByProductType(productType);
                model.addAttribute("products", productTypes);
            }
            if (maker != null && productType == null) {
                List<Product> makerProduct = productService.getByMaker(maker);
                model.addAttribute("products", makerProduct);
            }
            if (maker != null && productType != null) {
                List<Product> productsList = productService.getProductName();

                for (Product product : productsList) {
                    if (product.getMaker().getName().equals(maker) && product.getProductType().getName().equals(productType)) {
                        productList.add(product);
                    }
                }
                model.addAttribute("products", productList);
            }
            if (maker == null && productType == null) {
                List<Product> productsAllList = productService.getProductName();
                model.addAttribute("products", productsAllList);
                return "products";
            }
        }
        return "products";
    }

    @GetMapping("/filterType/{productType}")
    public String getFilter1(@PathVariable String productType, Principal principal, Model model) {
        List<Product> productTypes = productService.getByProductType(productType);
        model.addAttribute("products", productTypes);
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        return "products";
    }

    @GetMapping("/filter2/{maker}")
    public String getFilter2(@PathVariable String maker, Principal principal, Model model) {
        List<Product> makerProduct = productService.getByMaker(maker);
        model.addAttribute("products", makerProduct);
        model.addAttribute("userPrincipal", productService.getUserByPrincipal(principal));
        return "products";
    }
}
