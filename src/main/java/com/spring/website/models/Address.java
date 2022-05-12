package com.spring.website.models;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Getter
@Setter
@ToString
@Entity
@Table(name = "address")
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private int phone;
    @Column
    private String city;
    @Column
    private String street;
    @Column
    private int building;
    @Column
    private int building1;

    @OneToOne
    @MapsId
    @JoinColumn(name = "user_id")
    private User user;
}
