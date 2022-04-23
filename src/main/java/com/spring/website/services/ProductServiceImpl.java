package com.spring.website.services;

import com.spring.website.dto.ProductFormDto;
import com.spring.website.models.Maker;
import com.spring.website.models.Product;
import com.spring.website.models.ProductType;
import com.spring.website.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;


    @Override
    public List<Product> getProduct() {
        return productRepository.findAll();
    }

    @Override
    public void saveProduct(Product product) {

//        Product product = Product.builder()
//                        .name(productFormDto.getName())
//                        .price(productFormDto.getPrice())
//                        .quantity(productFormDto.getQuantity())
//                        .color(productFormDto.getColor())
//                        .description(productFormDto.getDescription())
//                        .serialNumber(productFormDto.getSerialNumber())
//                        .build();
                productRepository.save(product);

    }


    @Override
    public Product editProduct(Long id) {
        return productRepository.getById(id);
    }

    @Override
    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }
}
