package com.spring.website.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "product")
@Builder
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(unique = true)
    private String name;
    @Column
    private Integer price;
    @Column
    private Boolean availability;
    @Column
    private Integer quantity;
    @Column
    private String color;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "serial_number")
    private String serialNumber;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private Set<BasketProduct> basketProducts;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "maker_id")
    private Maker maker;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_type_id")
    private ProductType productType;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private User user;

    //загрузка фото в бд
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
    private List<ImageProduct> imageProducts = new ArrayList<>();
    private Long previewImageId;
    private LocalDateTime dateOfCreated;

    @PrePersist
    private void init(){
        dateOfCreated = LocalDateTime.now();
    }
    public void addImageToProduct(ImageProduct imageProduct){
        imageProduct.setProduct(this);
        imageProducts.add(imageProduct);
    }


    public Product(String name, String color, String serialNumber) {
        this.name = name;
        this.color = color;
        this.serialNumber = serialNumber;
    }
}
