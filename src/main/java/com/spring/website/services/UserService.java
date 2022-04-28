package com.spring.website.services;

import com.spring.website.dto.UserFormDto;
import com.spring.website.models.User;

import java.util.List;
import java.util.Map;

public interface UserService {

    boolean emailVerification(UserFormDto userForm);

    void signUp(UserFormDto userForm);

    User findByEmail(String email);

    List<User> getUserList();

    void banUser(Long id);

    void roleUser(Long id);
}
