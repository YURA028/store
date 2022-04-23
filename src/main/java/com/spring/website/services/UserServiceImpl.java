package com.spring.website.services;


import com.spring.website.models.User;
import com.spring.website.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;;

import java.util.List;
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserRepository userRepository;


    @Override
    public List<User> getUser() {
         userRepository.findAll();
        return null;
    }

    @Override
    public void saveUser(User theUser) {

    }

    @Override
    public User getUser(Long theId) {
        return null;
    }

    @Override
    public void deleteUser(Long theId) {

    }
}
