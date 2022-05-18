package com.spring.website.services.dto;

import com.spring.website.models.ImageProduct;
import com.spring.website.models.Product;
import com.spring.website.models.ProductType;
import com.spring.website.models.User;
import lombok.*;

import java.math.BigDecimal;
import java.util.List;


@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductDTO {
    private Long id;
    private String name;
    private BigDecimal price;
    private BigDecimal amount;
    private String color;
    private String description;
    private String serialNumber;
    private Long previewImageId;
    private String nameProductType;
    private String nameMaker;
    private List<ImageProduct> imageProducts;


    public static ProductDTO form(Product product){
        return ProductDTO.builder()
                .id(product.getId())
                .name(product.getName())
                .price(product.getPrice())
                .amount(product.getAmount())
                .color(product.getColor())
                .description(product.getDescription())
                .serialNumber(product.getSerialNumber())
                .nameProductType(product.getProductType().getName())
                .nameMaker(product.getMaker().getName())
                .imageProducts(product.getImageProducts())
                .build();
    }
}
