package com.spring.website.services;

import com.spring.website.dto.ProductFormDto;
import com.spring.website.dto.UserFormDto;
import com.spring.website.models.Product;
import org.springframework.web.multipart.MultipartFile;


import java.io.IOException;
import java.util.List;

public interface ProductService {

    Product getProductById(Long id);

    List<Product> getProductName(String name);

    List<Product> getProduct();

    void saveProduct(Product product, MultipartFile image1) throws IOException;

    Product editProduct(Long id);

    void deleteProduct(Long id);
}
