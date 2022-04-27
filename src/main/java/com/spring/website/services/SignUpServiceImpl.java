package com.spring.website.services;

import com.spring.website.dto.UserFormDto;
import com.spring.website.models.Role;
import com.spring.website.models.State;
import com.spring.website.models.User;
import com.spring.website.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;

import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class SignUpServiceImpl implements SignUpService {

    private final UserRepository usersRepository;

    private final PasswordEncoder passwordEncoder;

    @Override
    public void signUp(UserFormDto userForm) {
        String hashPassword = passwordEncoder.encode(userForm.getPassword());

        User user = User.builder()
                .firstName(userForm.getFirstName())
                .lastName(userForm.getLastName())
                .hashPassword(hashPassword)
                .login(userForm.getLogin())
                .email(userForm.getEmail())
                .role(Role.USER)
                .state(State.ACTIVE)
                .build();
        usersRepository.save(user);
    }

    @Override
    public User findByLogin(String login) {
        return usersRepository.findByLogin(login);
    }
}
