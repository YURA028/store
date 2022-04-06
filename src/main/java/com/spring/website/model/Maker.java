package com.spring.website.model;

import lombok.Data;

import javax.persistence.*;


import java.util.Set;
@Data
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

}
