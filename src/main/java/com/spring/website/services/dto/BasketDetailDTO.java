package com.spring.website.services.dto;

import com.spring.website.models.Product;
import lombok.*;
import java.math.BigDecimal;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BasketDetailDTO {

    private Long productId;
    private String name;
    private BigDecimal price;
    private BigDecimal amount;
    private Double sum;
    private Long previewImageId;

    public BasketDetailDTO(Product product) {
        this.name = product.getName();
        this.productId = product.getId();
        this.price = product.getPrice();
        this.amount = new BigDecimal("1");
        this.sum = Double.valueOf(product.getPrice().toString());
        this.previewImageId = product.getPreviewImageId();
    }
}
