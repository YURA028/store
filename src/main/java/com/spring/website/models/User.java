package com.spring.website.models;


import com.spring.website.models.enums.Role;
import com.spring.website.models.enums.State;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(unique = true)
    private String email;
    @Column(unique = true)
    private String username;
    @Column(length = 1000)
    @NotNull
    private String hashPassword;
    @Column(name = "first_name")
    private String firstName;
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "imageProduct_id")
    private ImageProduct avatar;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "user")
    private List<Product> products = new ArrayList<>();
    //date
    private LocalDateTime dateOfCreated;
    @PrePersist
    private void init() {
        dateOfCreated = LocalDateTime.now();
    }
    @Enumerated(value = EnumType.STRING)
    private Role role;
    @Enumerated(value = EnumType.STRING)
    private State state;
    @OneToOne(mappedBy = "user", cascade = CascadeType.REMOVE)
    private Address address;
//    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
//    private Set<Basket> basket;

    @OneToOne(mappedBy = "user", cascade = CascadeType.REMOVE)
    private Basket basket;

    public boolean isAdmin() {
        return role.equals(Role.ADMIN);
    }

}
