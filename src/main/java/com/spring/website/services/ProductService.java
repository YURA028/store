package com.spring.website.services;

import com.spring.website.dto.ProductFormDto;
import com.spring.website.dto.UserFormDto;
import com.spring.website.models.Product;


import java.util.List;

public interface ProductService {

    List<Product> getProduct();

    void saveProduct(Product product);

    Product editProduct(Long id);

    void deleteProduct(Long id);
}
