package com.spring.website.repositories;

import com.spring.website.models.User;
import com.spring.website.models.enums.Role;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findOneByEmail(String email);
    User findByEmail(String email);
    User findByRole(Role role);
    User findFirstByUsername (String username);
    User findByUsername (String username);

}
