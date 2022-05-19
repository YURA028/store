package com.spring.website.models;

import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
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

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;
}
