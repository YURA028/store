package com.spring.website.services;


import com.spring.website.models.User;
import com.spring.website.services.dto.UserFormDto;

import java.security.Principal;
import java.util.List;

public interface UserService {

    User getUserByPrincipal(Principal principal);

    boolean emailVerification(UserFormDto userForm);

    void signUp(UserFormDto userForm);

//    User findByEmail(String email);

    List<User> getUserList();

    void banUser(Long id);

    void roleUser(Long id);
}
