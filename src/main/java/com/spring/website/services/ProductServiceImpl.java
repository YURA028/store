package com.spring.website.services;

import com.spring.website.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class ProductServiceImpl {

    @Autowired
    private ProductRepository productRepository;


}
