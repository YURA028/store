//package com.spring.website.service;
//
//import com.spring.website.dao.UserDAO;
//import com.spring.website.model.User;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;;
//
//import java.util.List;
//@Service
//public class UserServiceImpl implements UserService{
//
//    @Autowired
//    private UserDAO userDAO;
//
//    @Override
//    @Transactional
//    public List<User> getUser() {
//        return userDAO.getUser();
//    }
//
//    @Override
//    @Transactional
//    public void saveUser(User theUser) {
//        userDAO.saveUser(theUser);
//    }
//
//    @Override
//    @Transactional
//    public User getUser(Long theId) {
//        return userDAO.getUser(theId);
//    }
//
//    @Override
//    @Transactional
//    public void deleteUser(Long theId) {
//        userDAO.deleteUser(theId);
//    }
//}
