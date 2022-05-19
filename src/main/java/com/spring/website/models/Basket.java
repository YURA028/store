package com.spring.website.models;

import lombok.*;
import javax.persistence.*;
import java.util.List;


@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "baskets")
public class Basket {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "baskets_products",
            joinColumns = @JoinColumn(name = "basket_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id"))
    private List<Product> products;


    public void removeProduct(Product product) {
        products.remove(product);
//        product.getBaskets().remove(this);
    }

    public void removeProduct2(Product product) {
        products.removeIf(product1 -> product.getId().equals(product1.getId()));
    }

}
