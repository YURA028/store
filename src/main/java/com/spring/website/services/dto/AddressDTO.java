package com.spring.website.services.dto;

import com.spring.website.models.Address;
import lombok.*;


@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AddressDTO {

    private Long id;
    private int phone;
    private String city;
    private String street;
    private int building;

    public static AddressDTO form(Address address){
        return AddressDTO.builder()
                .id(address.getId())
                .phone(address.getPhone())
                .city(address.getCity())
                .street(address.getStreet())
                .building(address.getBuilding())
                .build();

    }

}
