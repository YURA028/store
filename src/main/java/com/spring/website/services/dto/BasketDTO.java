package com.spring.website.services.dto;

import com.spring.website.models.Basket;
import com.spring.website.models.Product;
import lombok.*;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BasketDTO {

    private int amountProducts;
    private Double sum;
    private List<BasketDetailDTO> basketDetails =new ArrayList<>();

    public void aggregate(){
        this.amountProducts = basketDetails.size();
        this.sum = basketDetails.stream()
                .map(BasketDetailDTO::getSum)
                .mapToDouble(Double::doubleValue)
                .sum();
    }


}
