package com.spring.website.services;

import com.spring.website.dto.UserFormDto;
import com.spring.website.models.enums.Role;
import com.spring.website.models.enums.State;
import com.spring.website.models.User;
import com.spring.website.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository usersRepository;

    private final PasswordEncoder passwordEncoder;

    @Override
    public boolean emailVerification(UserFormDto userForm) {
        if (usersRepository.findByEmail(userForm.getEmail()) != null ) {
            return false;
        }
        return true;
    }

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
    public User findByEmail(String email) {
        return usersRepository.findByEmail(email);
    }

    @Override
    public List<User> getUser() {
        usersRepository.findAll();
        return null;
    }
}
