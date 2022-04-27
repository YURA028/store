package com.spring.website.services;

import com.spring.website.dto.UserFormDto;
import com.spring.website.models.User;

import java.util.List;

public interface UserService {

    boolean emailVerification(UserFormDto userForm);

    void signUp(UserFormDto userForm);

    User findByEmail(String email);

    List<User> getUser();
}
