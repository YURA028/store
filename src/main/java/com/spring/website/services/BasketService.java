package com.spring.website.services;

import com.spring.website.models.Basket;
import com.spring.website.models.User;
import com.spring.website.services.dto.BasketDTO;

import java.security.Principal;
import java.util.List;

public interface BasketService {
    Basket createBasket(User user, List<Long> productIds);

    void addProducts(Basket basket, List<Long> productIds);

    BasketDTO getBasketByUser(String name);

    void deleteBasket(Long id, Principal principal);

    void deleteBasket2(Long id, Principal principal);

    void deleteBasketAll(Long id, Principal principal);

}
