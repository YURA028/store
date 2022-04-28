package com.spring.website.dto;


import com.spring.website.models.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class UserDto {

    private Long id;
    private String login;
    private String firstName;
    private String email;

    public static UserDto form(User user) {
        return UserDto.builder()
                .id(user.getId())
                .login(user.getLogin())
                .firstName(user.getFirstName())
                .email(user.getEmail())
                .build();

    }
}
