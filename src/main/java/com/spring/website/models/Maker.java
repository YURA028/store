package com.spring.website.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;


import java.util.Set;
@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "maker")
public class Maker {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String name;

//    @OneToMany(mappedBy = "maker", cascade = CascadeType.ALL)
//    private Set<Product> product;

}
