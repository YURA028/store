package com.spring.website.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Set;

@Data
@Entity
@Table(name = "product")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String name;
    @Column
    private int price;
    @Column
    private boolean availability;
    @Column
    private int quantity;
    @Column
    private String color;
    @Column
    private String description;
    @Column(name = "serial_number")
    private String serialNumber;

    @OneToMany(mappedBy = "product")
    private Set<BasketProduct> basketProducts;

    @ManyToOne
    @JoinColumn(name = "maker_id", nullable = false)
    private Maker maker;

    @ManyToOne
    @JoinColumn(name = "product_type_id", nullable = false)
    private ProductType productType;

}
