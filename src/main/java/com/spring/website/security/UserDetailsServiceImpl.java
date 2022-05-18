package com.spring.website.security;

import com.spring.website.models.User;
import com.spring.website.repositories.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    private final UserRepository usersRepository;

    @Autowired
    public UserDetailsServiceImpl(UserRepository usersRepository) {
        this.usersRepository = usersRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Optional<User> userCandidate = usersRepository.findOneByEmail(email);
        if (userCandidate.isPresent()){
            return new UserDetailsImpl(userCandidate.get());
        }else throw new IllegalArgumentException("User not found");
//        return new
//                UserDetailsImpl(usersRepository.findOneByEmail(email)
//                .orElseThrow(IllegalArgumentException::new));
    }
}
