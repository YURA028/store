package com.spring.website.services.dto;

import com.spring.website.models.Address;
import lombok.*;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;


@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AddressDTO {

    private Long id;

//    @NotEmpty(message = "Phone should not be empty")
//    @Min(value = 7, message = "Phone should be greater then 7")
//    @Max(value = 11, message = "The phone should be smaller 11")
    private int phone;

//    @NotEmpty(message = "City should not be empty")
//    @Size(min = 3, max = 15, message = "City should be between 3 and 15 characters")
    private String city;

//    @NotEmpty(message = "Street should not be empty")
//    @Size(min = 3, max = 15, message = "Street should be between 3 and 15 characters")
    private String street;

//    @Min(value = 0, message = "Building should be greater then 0")
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
