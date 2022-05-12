package com.spring.website.services;


import com.spring.website.models.Product;
import com.spring.website.models.User;
import com.spring.website.services.dto.ProductDTO;
import org.springframework.web.multipart.MultipartFile;


import java.io.IOException;
import java.security.Principal;
import java.util.List;

public interface ProductService {


    Product getProductById(Long id);

    List<Product> getProductName(String name);

    User getUserByPrincipal(Principal principal);

    void saveProduct(Principal principal,
                     Product product,
                     MultipartFile file1,
                     MultipartFile file2,
                     MultipartFile file3) throws IOException;

    Product editProduct(Long id);

    void deleteProduct(Long id);

    ////////////////////////////////////
    List<ProductDTO> getAll();
    void addToUserBasket(Long productId, Principal principal);


}
