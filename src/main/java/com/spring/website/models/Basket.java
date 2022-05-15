package com.spring.website.models;

import lombok.*;
import org.hibernate.Hibernate;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.List;
import java.util.Objects;

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
//    private Long product_id;
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

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "baskets_products",
            joinColumns = @JoinColumn(name = "basket_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id"))
    private List<Product> products;


    public void removeProduct(Product product) {
        products.remove(product);
//        product.getBaskets().remove(this);
    }
    public void removeProduct2(List<Product> product) {
        products.removeAll(product);
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        Basket basket = (Basket) o;
        return id != null && Objects.equals(id, basket.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
