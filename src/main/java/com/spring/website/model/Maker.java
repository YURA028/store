package com.spring.website.model;

import javax.persistence.*;

import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "maker")
public class Maker {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String name;

    @OneToMany(mappedBy = "maker")
    private Set<Product> product;

    @Override
    public String toString() {
        return "Maker{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", product=" + product +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Maker maker = (Maker) o;
        return Objects.equals(id, maker.id) && Objects.equals(name, maker.name) && Objects.equals(product, maker.product);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, product);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Product> getProduct() {
        return product;
    }

    public void setProduct(Set<Product> product) {
        this.product = product;
    }


}
