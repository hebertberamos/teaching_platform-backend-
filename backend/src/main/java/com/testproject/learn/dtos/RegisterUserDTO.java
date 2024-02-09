package com.testproject.learn.dtos;

import com.testproject.learn.entities.Notification;
import com.testproject.learn.entities.enums.UserRole;

import java.util.ArrayList;
import java.util.List;

public class RegisterUserDTO {

    private String name;
    private String email;
    private String password;
    private UserRole role;

    private List<Notification> notifications = new ArrayList<>();

    public RegisterUserDTO(){}

    public RegisterUserDTO(String name, String email, String password, UserRole role) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public List<Notification> getNotifications() {
        return notifications;
    }
}
