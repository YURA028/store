package com.spring.website.services;


import com.spring.website.models.Maker;
import com.spring.website.models.Product;
import com.spring.website.models.User;
import com.spring.website.services.dto.ProductDTO;
import org.springframework.web.multipart.MultipartFile;


import java.io.IOException;
import java.security.Principal;
import java.util.List;

public interface ProductService {


    Product getProductById(Long id);

    List<Product> getProductName();

    User getUserByPrincipal(Principal principal);

    void saveProduct(Principal principal,
                     Product product,
                     MultipartFile file1,
                     MultipartFile file2) throws IOException;

    void deleteProduct(Long id);
    ////////////////////////////////////
    void addToUserBasket(Long productId, Principal principal);

    List<Product> getFilter(String filter);

    List<Product> getByMaker(String maker);

    List<Product> getByProductType(String productType);

    void updateProduct(ProductDTO productDTO, Long id);
}
