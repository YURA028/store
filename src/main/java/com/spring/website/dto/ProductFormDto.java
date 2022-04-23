package com.spring.website.dto;

import com.spring.website.models.Product;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;


@Data
public class ProductFormDto {
    private String name;
    private int price;
    private int quantity;
    private String color;
    private String description;
    private String serialNumber;
    private String nameProductType;
    private String nameMaker;


//    public static ProductFormDto form(Product product){
//        return ProductFormDto.builder()
//                .name(product.getName())
//                .price(product.getPrice())
//                .quantity(product.getQuantity())
//                .color(product.getColor())
//                .description(product.getDescription())
//                .serialNumber(product.getSerialNumber())
//                .nameProductType(product.getProductType().getName())
//                .nameMaker(product.getMaker().getName())
//                .build();
//
//    }
}
