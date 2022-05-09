package com.codeup.adlister;


import java.util.List;

public interface Quotes {
    List<Quote> all();
    void insert(Quote quote);
}