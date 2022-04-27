package com.spring.website.dto;

import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Data
public class UserFormDto {

    @NotBlank(message = "Имя является обязательным входным параметром.")
    private String firstName;

    @NotBlank(message = "Фамилия является обязательным входным параметром.")
    private String lastName;

    @NotBlank(message = "Имя является обязательным входным параметром.")
    @NotNull
    private String login;

    @NotEmpty(message = "Пароль является обязательным входным значением.")
    @Length(min = 8, max = 16, message = "Пожалуйста, введите пароль длиной не менее 8 и не более 16 символов.")
    private String password;

    @NotEmpty(message = "Требуется электронная почта.")
    @Email(message = "Пожалуйста, введите в формате электронной почты.")
    private String email;
}
