package com.spring.website.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
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
    @Column
    private String name;
    @Column
    private Integer price;
//    @Column
//    private Boolean availability;
    @Column
    private Integer quantity;
    @Column
    private String color;
    @Column
    private String description;
    @Column(name = "serial_number")
    private String serialNumber;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    private Set<BasketProduct> basketProducts;

//    @ManyToOne
//    @JoinColumn(name = "maker_id")
//    private Maker maker;
//
//    @ManyToOne
//    @JoinColumn(name = "product_type_id")
//    private ProductType productType;



    public Product(String name, String color, String serialNumber) {
        this.name = name;
        this.color = color;
        this.serialNumber = serialNumber;
    }
}
