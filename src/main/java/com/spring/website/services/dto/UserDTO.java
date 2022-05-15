package com.spring.website.services.dto;


import lombok.*;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;


@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserDTO {

    private Long id;
    private String username;
    @Min(5)
    @Max(10)
    private String firstName;
    private String email;
    private String role;
    private String state;
    private String password;
    private String matchingPassword;

//    public static UserDto form(User user) {
//        return UserDto.builder()
//                .id(user.getId())
//                .username(user.getUsername())
//                .firstName(user.getFirstName())
//                .email(user.getEmail())
//                .role(user.getRole().name())
//                .status(user.getState().name())
//                .build();
//
//    }
}
