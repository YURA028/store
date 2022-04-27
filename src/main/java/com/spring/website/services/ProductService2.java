package com.spring.website.services;

import com.spring.website.models.ImageProduct;
import com.spring.website.models.Maker;
import com.spring.website.models.Product;
import com.spring.website.models.User;
import com.spring.website.repositories.ProductRepository;
import com.spring.website.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService2 {
    private final ProductRepository productRepository;
    private final UserRepository userRepository;

    public List<Product> listProducts(String name) {
        if (name != null) return productRepository.findByName(name);
        return productRepository.findAll();
    }

    public void saveProduct(Principal principal,
                            Product product,
                            MultipartFile file1,
                            MultipartFile file2,
                            MultipartFile file3) throws IOException {
        product.setUser(getUserByPrincipal(principal));
        ImageProduct image1;
        ImageProduct image2;
        ImageProduct image3;
        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            product.addImageToProduct(image1);
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            product.addImageToProduct(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            product.addImageToProduct(image3);
        }
        log.info("Saving new Product. Name: {}; Color: {}", product.getName(), product.getUser().getEmail());
        Product productFromDb = productRepository.save(product);
        productFromDb.setPreviewImageId(productFromDb.getImageProducts().get(0).getId());
        productRepository.save(product);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null){
            return new User();
        }
        return userRepository.findByEmail(principal.getName());
    }

    private ImageProduct toImageEntity(MultipartFile file) throws IOException {
        ImageProduct imageProduct = new ImageProduct();
        imageProduct.setName(file.getName());
        imageProduct.setOriginalFileName(file.getOriginalFilename());
        imageProduct.setContentType(file.getContentType());
        imageProduct.setSize(file.getSize());
        imageProduct.setBytes(file.getBytes());
        return imageProduct;
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}