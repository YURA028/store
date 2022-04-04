package com.spring.website.dao;

import com.spring.website.model.User;

import java.util.List;

public interface UserDAO {

    public List<User> getUser();

    public void saveUser(User theCustomer);

    public User getUser(Long theId);

    public void deleteUser(Long theId);
}
