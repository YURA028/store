package com.spring.website.services;

import com.spring.website.dto.ProductFormDto;
import com.spring.website.models.ImageProduct;
import com.spring.website.models.Maker;
import com.spring.website.models.Product;
import com.spring.website.models.ProductType;
import com.spring.website.repositories.ProductRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
@Slf4j
public class ProductServiceImpl implements ProductService {


    private final ProductRepository productRepository;

    @Autowired
    public ProductServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    @Override
    public List<Product> getProductName(String name) {
        if (name != null) {
            return productRepository.findByName(name);
        }
        return productRepository.findAll();
    }

    @Override
    public List<Product> getProduct() {
        return productRepository.findAll();
    }

    @Override
    public void saveProduct(Product product,
                            MultipartFile file1) throws IOException{
//                            MultipartFile file2,
//                            MultipartFile file3) throws IOException {
        ImageProduct imageProduct1;
//        ImageProduct imageProduct2;
//        ImageProduct imageProduct3;
        if (file1.getSize() != 0) {
            imageProduct1 = toImageEntity(file1);
            imageProduct1.setPreviewImage(true);
            product.addImageToProduct(imageProduct1);
        }
//        if (file2.getSize() != 0) {
//            imageProduct2 = toImageEntity(file2);
//            product.addImageToProduct(imageProduct2);
//        }
//        if (file3.getSize() != 0) {
//            imageProduct3 = toImageEntity(file3);
//            product.addImageToProduct(imageProduct3);
//        }
        log.info("Saving new Product. Name: {}; Color: {}", product.getName(), product.getColor());
        Product productFromDb = productRepository.save(product);
        productFromDb.setPreviewImageId(productFromDb.getImageProducts().get(0).getId());

        productRepository.save(product);

    }

    private ImageProduct toImageEntity(MultipartFile file1) throws IOException {
        ImageProduct imageProduct = new ImageProduct();
        imageProduct.setName(file1.getName());
        imageProduct.setOriginalFileName(file1.getOriginalFilename());
        imageProduct.setContentType(file1.getContentType());
        imageProduct.setSize(file1.getSize());
        imageProduct.setBytes(file1.getBytes());
        return imageProduct;
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
