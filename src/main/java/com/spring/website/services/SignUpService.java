package com.spring.website.services;

import com.spring.website.dto.UserFormDto;
import com.spring.website.models.User;

public interface SignUpService {
    void signUp(UserFormDto userForm);
    User findByLogin(String login);
}
