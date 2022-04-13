package com.spring.website.models;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Data
@Entity
@Table(name = "basket")
public class Basket {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private Date date;
    @Column
    private int price;
    @Column
    private boolean status;
    @Column
    private String comment;

    @OneToMany(mappedBy = "basket")
    private Set<BasketProduct> basketProducts;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;



}
