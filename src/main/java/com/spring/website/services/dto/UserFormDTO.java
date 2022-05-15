package com.spring.website.services.dto;

import lombok.*;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserFormDTO {

    @Min(5)
    @Max(10)
    private String firstName;
    private String username;
    private String password;
    private String matchingPassword;
    private String email;


}
