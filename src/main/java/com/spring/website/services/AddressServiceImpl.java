package com.spring.website.services;

import com.spring.website.models.Address;
import com.spring.website.models.User;
import com.spring.website.repositories.AddressRepository;
import com.spring.website.repositories.UserRepository;
import com.spring.website.services.dto.AddressDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.Principal;

@Service
public class AddressServiceImpl implements AddressService{

    private final AddressRepository addressRepository;
    private final UserService userService;
    private final UserRepository userRepository;

    @Autowired
    public AddressServiceImpl(AddressRepository addressRepository, UserService userService, UserRepository userRepository) {
        this.addressRepository = addressRepository;
        this.userService = userService;
        this.userRepository = userRepository;
    }

    @Override
    public void saveAddress(AddressDTO addressDTO, Principal principal) {
        User user = userService.getUserByPrincipal(principal);
        Address address;
        if (user.getId().equals(addressDTO.getId())){
            address = addressRepository.getById(user.getId());
            address.setPhone(addressDTO.getPhone());
            address.setCity(addressDTO.getCity());
            address.setStreet(addressDTO.getStreet());
            address.setBuilding(addressDTO.getBuilding());
        }else {
            address = Address.builder()
                    .id(user.getId())
                    .phone(addressDTO.getPhone())
                    .city(addressDTO.getCity())
                    .street(addressDTO.getStreet())
                    .building(addressDTO.getBuilding())
                    .build();
            address.setUser(user);
        }
        addressRepository.save(address);


    }
}
