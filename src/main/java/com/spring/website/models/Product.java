package com.spring.website.models;

import lombok.*;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.*;

@Getter
@Setter
@ToString
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "products")
@Builder
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String name;
    @Column
    private BigDecimal price;
    @Column
    private Integer quantity;
    @Column
    private String color;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "serial_number")
    private String serialNumber;


//    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "products", cascade = CascadeType.ALL)
//    private List<Basket> baskets;

    @ManyToMany(mappedBy = "productList")
    @ToString.Exclude
    List<Basket222> basket222List;

//    @ManyToMany(mappedBy = "products")
//    List<Basket> basketList;


//    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
//    private Set<BasketProduct> basketProducts;


    //    @ManyToMany(cascade = CascadeType.ALL)
//    @JoinTable(name = "products_categories",
//            joinColumns = @JoinColumn(name = "product_id"),
//            inverseJoinColumns = @JoinColumn(name = "category_id"))
//    private List<Category> categories;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "maker_id")
    private Maker maker;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_type_id")
    private ProductType productType;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    @ToString.Exclude
    private User user;

    //загрузка фото в бд
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
    @ToString.Exclude
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return Objects.equals(id, product.id) && Objects.equals(name, product.name) && Objects.equals(price, product.price) && Objects.equals(quantity, product.quantity) && Objects.equals(color, product.color) && Objects.equals(description, product.description) && Objects.equals(serialNumber, product.serialNumber) && Objects.equals(basket222List, product.basket222List) && Objects.equals(maker, product.maker) && Objects.equals(productType, product.productType) && Objects.equals(user, product.user) && Objects.equals(imageProducts, product.imageProducts) && Objects.equals(previewImageId, product.previewImageId) && Objects.equals(dateOfCreated, product.dateOfCreated);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, price, quantity, color, description, serialNumber, basket222List, maker, productType, user, imageProducts, previewImageId, dateOfCreated);
    }
}
