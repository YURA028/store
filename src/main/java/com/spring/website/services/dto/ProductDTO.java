package com.spring.website.services.dto;

import com.spring.website.models.User;
import lombok.*;


@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductDTO {
    private Long id;
    private String name;
    private int price;
    private int quantity;
    private String color;
    private String description;
    private String serialNumber;
    private Long previewImageId;
    private User user;



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