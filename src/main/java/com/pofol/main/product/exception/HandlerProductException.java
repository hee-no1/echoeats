package com.pofol.main.product.exception;

public class HandlerProductException {

    public void ExpiredProductExceptionHandler(ExpiredProductException e) {

        System.err.println("ExpiredProductException : " + e.getMessage());
        e.printStackTrace();
    }

    public void ProductStatusExceptionHandler(ProductStatusException e) {

        System.err.println("ProductStatusException : " + e.getMessage());
        e.printStackTrace();
    }
}
