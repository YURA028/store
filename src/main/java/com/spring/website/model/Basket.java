package com.spring.website.model;

import javax.persistence.*;
import java.util.Date;

import java.util.Objects;
import java.util.Set;

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

    @Override
    public String toString() {
        return "Basket{" +
                "id=" + id +
                ", date=" + date +
                ", price=" + price +
                ", status=" + status +
                ", comment='" + comment + '\'' +
                ", basketProducts=" + basketProducts +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Basket basket = (Basket) o;
        return price == basket.price && status == basket.status && Objects.equals(id, basket.id) && Objects.equals(date, basket.date) && Objects.equals(comment, basket.comment) && Objects.equals(basketProducts, basket.basketProducts);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, date, price, status, comment, basketProducts);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Set<BasketProduct> getBasketProducts() {
        return basketProducts;
    }

    public void setBasketProducts(Set<BasketProduct> basketProducts) {
        this.basketProducts = basketProducts;
    }

}
