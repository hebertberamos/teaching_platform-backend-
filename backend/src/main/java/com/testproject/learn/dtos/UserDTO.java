package com.testproject.learn.dtos;

import com.testproject.learn.entities.User;
import com.testproject.learn.entities.enums.UserRole;

import java.io.Serializable;

public class UserDTO implements Serializable {

    private String neme;
    private String email;
    private String password;
    private UserRole role;

    public UserDTO(){}

    public UserDTO(String neme, String email, String password, UserRole role) {
        this.neme = neme;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public UserDTO(User user){
        neme = user.getName();
        email = user.getEmail();
        password = user.getPassword();
        role = user.getRole();
    }

    public String getNeme() {
        return neme;
    }

    public void setNeme(String neme) {
        this.neme = neme;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserRole getRole() {
        return role;
    }

    public void setRole(UserRole role) {
        this.role = role;
    }
}
