package com.qrmenu.service;

public class NotFoundObjectException extends RuntimeException {
    private static final long serialVersionUID = 1L;
    public NotFoundObjectException () {
        super("Object Not Found!");
    }

}
