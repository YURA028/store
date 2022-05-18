package com.spring.website.services;

import com.spring.website.models.Basket;
import com.spring.website.models.Product;
import com.spring.website.models.User;
import com.spring.website.repositories.BasketRepository;
import com.spring.website.repositories.ProductRepository;
import com.spring.website.services.dto.BasketDTO;
import com.spring.website.services.dto.BasketDetailDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.security.Principal;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class BasketServiceImpl implements BasketService{

    private final BasketRepository basketRepository;
    private final ProductRepository productRepository;
    private final UserService userService;


    @Autowired
    public BasketServiceImpl(BasketRepository basketRepository, ProductRepository productRepository, UserService userService) {
        this.basketRepository = basketRepository;
        this.productRepository = productRepository;
        this.userService = userService;
    }



    @Override
    @Transactional
    public Basket createBasket(User user, List<Long> productIds) {
        Basket basket = new Basket();
        basket.setUser(user);
        List<Product> productList = getCollectRefProductsByIds(productIds);
        basket.setProducts(productList);
        return basketRepository.save(basket);
    }

    private List<Product> getCollectRefProductsByIds(List<Long> productIds) {
        return productIds.stream()
                //getOne вытаскивает ссылку на объект, findById вытаскивает сам объект
                .map(productRepository::getOne)
                .collect(Collectors.toList());
    }

    @Override
    public void addProducts(Basket basket, List<Long> productIds) {
        List<Product> products = basket.getProducts();
        List<Product> newProductList = products == null ? new ArrayList<>() : new ArrayList<>(products);
        newProductList.addAll(getCollectRefProductsByIds(productIds));
        basket.setProducts(newProductList);
        basketRepository.save(basket);
    }

    @Override
    public BasketDTO getBasketByUser(String name) {
        User user = userService.findByEmail(name);
        if (user == null){
            return new BasketDTO();
        }
        BasketDTO basketDTO = new BasketDTO();
        Map<Long, BasketDetailDTO> mapProductId = new HashMap<>();

        List<Product> products =user.getBasket().getProducts();
        for (Product product : products){
            BasketDetailDTO detailDTO = mapProductId.get(product.getId());
            if (detailDTO == null){
                mapProductId.put(product.getId(), new BasketDetailDTO(product));
            }else {
                detailDTO.setAmount(detailDTO.getAmount().add(new BigDecimal("1")));
                detailDTO.setSum(detailDTO.getSum() + Double.parseDouble(product.getPrice().toString()));
            }
        }
        basketDTO.setBasketDetails(new ArrayList<>(mapProductId.values()));
        basketDTO.aggregate();
        return basketDTO;
    }

    @Override
    public void deleteBasket(Long id, Principal principal) {
        User user = userService.getUserByPrincipal(principal);
        if (user == null){
            throw new RuntimeException("User not found ----- " +principal.getName());
        }
        Basket basket = user.getBasket();
        basket.removeProduct(productRepository.getById(id));
        basketRepository.delete(basket);
        basketRepository.save(basket);
    }

    @Override
    public void deleteBasket2(Long id, Principal principal) {
        User user = userService.getUserByPrincipal(principal);
        if (user == null){
            throw new RuntimeException("User not found ----- " +principal.getName());
        }
        Basket basket = user.getBasket();
        basket.removeProduct2(productRepository.getById(id));
        basketRepository.delete(basket);
        basketRepository.save(basket);
    }

    @Override
    public void deleteBasketAll(Long id, Principal principal) {
        User user = userService.getUserByPrincipal(principal);
        if (user == null){
            throw new RuntimeException("User not found ----- " +principal.getName());
        }
        Basket basket = user.getBasket();
        basketRepository.delete(basket);
        basketRepository.save(basket);
    }

}
