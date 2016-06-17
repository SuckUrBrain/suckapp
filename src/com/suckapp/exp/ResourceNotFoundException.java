package com.suckapp.exp;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

public class ResourceNotFoundException extends RuntimeException {
	
	@ExceptionHandler(ResourceNotFoundException.class)
	@ResponseStatus(value=HttpStatus.BAD_REQUEST)
    public String handleResourceNotFoundException() {
		System.out.println("here");
        return "meters/notfound";
    }
	
}