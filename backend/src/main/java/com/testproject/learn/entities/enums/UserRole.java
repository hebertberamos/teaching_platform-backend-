package com.testproject.learn.entities.enums;

public enum UserRole {

    ADMIN("admin"),
    EMPLOYEE("employee"),
    USER("user");

    private String role;

    UserRole(String role){
        this.role = role;
    }
    public String getRole(){
        return role;
    }

}
