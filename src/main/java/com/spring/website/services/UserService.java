package com.spring.website.services;

import com.spring.website.models.User;

import java.util.List;

public interface UserService {

   List<User> getUser();

   void saveUser(User theUser);

   User getUser(Long theId);

   void deleteUser(Long theId);
}
