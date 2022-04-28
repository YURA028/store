package com.spring.website.services;

import com.spring.website.dto.UserFormDto;
import com.spring.website.models.enums.Role;
import com.spring.website.models.enums.State;
import com.spring.website.models.User;
import com.spring.website.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;

import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Slf4j
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository usersRepository;

    private final PasswordEncoder passwordEncoder;

    @Override
    public boolean emailVerification(UserFormDto userForm) {
        if (usersRepository.findByEmail(userForm.getEmail()) != null) {
            return false;
        }
        return true;
    }

    @Override
    public void signUp(UserFormDto userForm) {
        String hashPassword = passwordEncoder.encode(userForm.getPassword());

        User user = User.builder()
                .firstName(userForm.getFirstName())
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
    public List<User> getUserList() {
        return usersRepository.findAll();
    }

    @Override
    public void banUser(Long id) {
        User user = usersRepository.findById(id).orElse(null);
        if (user != null) {
            if (user.getId() != 1 & user.getRole().equals(Role.USER)) {
                if (user.getState().equals(State.ACTIVE)) {
                    user.setState(State.BANNED);
                    log.info("Ban user with id = {}; email: {}", user.getId(), user.getEmail());
                } else {
                    user.setState(State.ACTIVE);
                    log.info("Unban user with id = {}; email: {}", user.getId(), user.getEmail());
                }
                usersRepository.save(user);
            }
        }
    }

    @Override
    public void roleUser(Long id) {
        User user = usersRepository.findById(id).orElse(null);

        if (user != null) {
            if (user.getId() != 1) {
                if (user.getRole().equals(Role.USER)) {
                    user.setRole(Role.ADMIN);
                    log.info("Ban user with id = {}; email: {}", user.getId(), user.getEmail());
                } else {
                    user.setRole(Role.USER);
                    log.info("Unban user with id = {}; email: {}", user.getId(), user.getEmail());
                }
                usersRepository.save(user);
            }
        }
    }
}
