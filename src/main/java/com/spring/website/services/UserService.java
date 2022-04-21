package com.spring.website.services;

import com.spring.website.models.User;

import java.util.List;

public interface UserService {

    public List<User> getUser();

    public void saveUser(User theUser);

    public User getUser(Long theId);

    public void deleteUser(Long theId);
}
