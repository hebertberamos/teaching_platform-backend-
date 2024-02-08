package com.testproject.learn.servicies.exceptions;

public class ResourcesNotFoundException extends RuntimeException{

    public ResourcesNotFoundException(String message) {
        super(message);
    }

}
