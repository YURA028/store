package com.spring.website.models;

import lombok.*;

import javax.persistence.*;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@ToString
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "baskets")
public class Basket {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
//    @Column
//    private Date date;
//    @Column
//    private int price;
//    @Column
//    private boolean status;
//    @Column
//    private String comment;

//    @OneToMany(mappedBy = "basket")
//    private Set<BasketProduct> basketProducts;

//    @ManyToOne
//    @JoinColumn(name = "user_id", nullable = false)
//    private User user;
    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToMany
    @JoinTable(name = "baskets_products",
            joinColumns = @JoinColumn(name = "basket_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id"))
    private List<Product> products;
}
