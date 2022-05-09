package com.codeup.adlister.dao;
import java.util.List;

public interface Authors {
    List<Author> all();
    Author getAuthorById(long id);
    long insert(Author author);

    List<Author> searchAuthors(String searchString);
}