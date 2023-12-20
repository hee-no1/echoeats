package com.pofol.main.product.exception;

public class ExpiredProductException extends RuntimeException{
    
    public ExpiredProductException(String errorMessage) {
        super(errorMessage);
    }
}
