package com.pofol.main.product.exception;

public class ProductStatusException extends RuntimeException{

    public ProductStatusException(String errorMessage) {
        super(errorMessage);
    }
}
