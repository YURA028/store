package com.spring.website.services;


import com.spring.website.models.User;

import com.spring.website.services.dto.UserDTO;
import com.spring.website.services.dto.UserFormDTO;

import java.security.Principal;
import java.util.List;

public interface UserService {

    User getUserByPrincipal(Principal principal);
    boolean emailVerification(UserFormDTO userForm);
    void signUp(UserFormDTO userForm);
    List<UserDTO> getAll();
    User findByEmail(String email);
    User findByUsername(String username);
    void save(User user);
    void updateProfile(UserDTO userDTO);
    void banUser(Long id);
    void roleUser(Long id);
    void deleteUserStatus(Principal principal);
    void deleteUser(Long id);


}
