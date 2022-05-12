package com.spring.website.services;

import com.spring.website.services.dto.UserDTO;
import com.spring.website.services.dto.UserFormDTO;
import com.spring.website.models.enums.Role;
import com.spring.website.models.enums.State;
import com.spring.website.models.User;
import com.spring.website.repositories.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.security.Principal;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@Service
@Slf4j
//@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    @Autowired
    public UserServiceImpl(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    @Override
    public boolean emailVerification(UserFormDTO userForm) {
        if (userRepository.findByEmail(userForm.getEmail()) != null) {
            return false;
        }
        return true;
    }

    @Override
    public void signUp(UserFormDTO userForm) {
        String hashPassword = passwordEncoder.encode(userForm.getPassword());

        User user = User.builder()
                .firstName(userForm.getFirstName())
                .hashPassword(hashPassword)
                .username(userForm.getUsername())
                .email(userForm.getEmail())
                .role(Role.USER)
                .state(State.ACTIVE)
                .build();
        userRepository.save(user);
    }

//    @Override
//    public User findByEmail(String email) {
//        return userRepository.findByEmail(email);
//    }

    //    @Override
//    public List<User> getUserList() {
//        return userRepository.findAll();
//    }
    @Override
    public List<UserDTO> getAll() {
        return userRepository
                .findAll()
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }

    @Override
    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findFirstByUsername(username);
    }

    @Override
    public void save(User user) {
        userRepository.save(user);
    }

    @Override
    @Transactional
    public void updateProfile(UserDTO userDTO) {
        User saveUser = userRepository.findByEmail(userDTO.getEmail());
        if (saveUser == null) {
            throw new RuntimeException("User not found by name " + userDTO.getEmail());
        }
        boolean isChanged = false;
        if (userDTO.getPassword() != null && !userDTO.getPassword().isEmpty()) {
            saveUser.setHashPassword(passwordEncoder.encode(userDTO.getPassword()));
            isChanged = true;
        }
        if (!Objects.equals(userDTO.getEmail(), saveUser.getEmail())) {
            saveUser.setEmail(userDTO.getEmail());
            isChanged = true;
        }
        if (!Objects.equals(userDTO.getFirstName(), saveUser.getFirstName())) {
            saveUser.setFirstName(userDTO.getFirstName());
            isChanged = true;
        }
        if (!Objects.equals(userDTO.getUsername(), saveUser.getUsername())) {
            saveUser.setUsername(userDTO.getUsername());
            isChanged = true;
        }
        if (isChanged) {
            userRepository.save(saveUser);
        }
    }

    private UserDTO toDto(User user) {
        return UserDTO.builder()
                .id(user.getId())
                .username(user.getUsername())
                .firstName(user.getFirstName())
                .email(user.getEmail())
                .role(user.getRole().name())
                .state(user.getState().name())
                .build();
    }

    @Override
    public void banUser(Long id) {
        User user = userRepository.findById(id).orElse(null);
        if (user != null) {
            if (user.getId() != 1 & user.getRole().equals(Role.USER)) {
                if (user.getState().equals(State.ACTIVE)) {
                    user.setState(State.BANNED);

                } else {
                    user.setState(State.ACTIVE);
                    log.info("Unban user with id = {}; email: {}", user.getId(), user.getEmail());
                }
                userRepository.save(user);
            }
        }
    }

    @Override
    public void roleUser(Long id) {
        User user = userRepository.findById(id).orElse(null);

        if (user != null) {
            if (user.getId() != 1) {
                if (user.getRole().equals(Role.USER)) {
                    user.setRole(Role.ADMIN);
                    log.info("Ban user with id = {}; email: {}", user.getId(), user.getEmail());
                } else {
                    user.setRole(Role.USER);
                    log.info("Unban user with id = {}; email: {}", user.getId(), user.getEmail());
                }
                userRepository.save(user);
            }
        }
    }
}