package com.spring.website.repositories;

import com.spring.website.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
//    Optional<User> findAllByFirstName(String firstName);

    Optional<User> findOneByLogin(String login);
    User findByLogin(String login);
}
