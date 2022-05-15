package com.spring.website.services;

import com.spring.website.mapper.ProductMapper;
import com.spring.website.models.*;
import com.spring.website.repositories.ProductRepository;
import com.spring.website.repositories.UserRepository;
import com.spring.website.services.dto.ProductDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.EntityNotFoundException;
import java.io.IOException;
import java.security.Principal;
import java.util.Collections;
import java.util.List;

@Service
@Slf4j
public class ProductServiceImpl implements ProductService {

    private final ProductMapper mapper = ProductMapper.MAPPER;
    private final ProductRepository productRepository;
    private final UserRepository userRepository;
    private final UserService userService;
    private final BasketService basketService;

    @Autowired
    public ProductServiceImpl(ProductRepository productRepository, UserRepository userRepository, UserService userService, BasketService basketService) {
        this.productRepository = productRepository;
        this.userRepository = userRepository;
        this.userService = userService;
        this.basketService = basketService;
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    @Override
    public List<Product> getProductName() {
        return productRepository.findAll();
    }

    @Override
    public User getUserByPrincipal(Principal principal) {
        if (principal == null) {
            return new User();
        }
        return userRepository.findByEmail(principal.getName());
    }


    @Override
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

    private ImageProduct toImageEntity(MultipartFile file) throws IOException {
        ImageProduct imageProduct = new ImageProduct();
        imageProduct.setName(file.getName());
        imageProduct.setOriginalFileName(file.getOriginalFilename());
        imageProduct.setContentType(file.getContentType());
        imageProduct.setSize(file.getSize());
        imageProduct.setBytes(file.getBytes());
        return imageProduct;
    }

    @Override
    @Transactional
    public Product editProduct(Long id) {
        return productRepository.findById(id).orElseThrow(EntityNotFoundException::new);
    }

    @Override
    public void deleteProduct(Long id) {
        Product product = productRepository.findById(id).orElseThrow();
                productRepository.delete(product);
                log.info("Product with id = {} was deleted", id);

    }

    @Override
    public List<ProductDTO> getAll() {
        return mapper.formProductList(productRepository.findAll());
    }

    @Override
    public void addToUserBasket(Long productId, Principal principal) {
        User user = getUserByPrincipal(principal);
        if (user == null){
            throw new RuntimeException("User not found ----- " +principal.getName());
        }

        Basket basket = user.getBasket();
        if (basket == null){
            Basket newBasket = basketService.createBasket(user, Collections.singletonList(productId));
            user.setBasket(newBasket);
            userService.save(user);
        }else {
            basketService.addProducts(basket, Collections.singletonList(productId));
        }
    }

    @Override
    public List<Product> getFilter(String filter) {
        return productRepository.getFilter(filter);
    }

    @Override
    public List<Product> getByMaker(String maker) {
        return productRepository.getByMaker(maker);
    }

    @Override
    public List<Product> getByProductType(String productType) {
        return productRepository.getByProductType(productType);
    }
}