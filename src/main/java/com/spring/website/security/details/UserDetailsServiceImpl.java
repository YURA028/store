package com.spring.website.security.details;

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

    @Autowired
    private UserRepository usersRepository;


    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
//        Optional<User> userCandidate = usersRepository.findOneByLogin(login);
//        if (userCandidate.isPresent()){
//            return new UserDetailsImpl(userCandidate.get());
//        }else throw new IllegalArgumentException("User not found");

        return new
                UserDetailsImpl(usersRepository.findOneByEmail(email)
                .orElseThrow(IllegalArgumentException::new));
    }
}
