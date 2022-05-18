package com.spring.website.services;

import com.spring.website.services.dto.AddressDTO;

import java.security.Principal;

public interface AddressService {

    void saveAddress(AddressDTO addressDTO, Principal principal);
}
