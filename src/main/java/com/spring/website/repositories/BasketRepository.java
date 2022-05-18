package com.spring.website.repositories;

import com.spring.website.models.Basket;

import org.springframework.data.jpa.repository.JpaRepository;

public interface BasketRepository extends JpaRepository<Basket, Long> {


}
