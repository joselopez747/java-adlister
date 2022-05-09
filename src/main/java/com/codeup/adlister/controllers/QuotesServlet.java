package com.codeup.adlister.controllers;

import com.codeup.adlister.Quote;
import com.codeup.adlister.Quotes;
import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/quotes")
public class QuotesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Quotes quotesDao = DaoFactory.getQuotesDao();
        List<Quote> quotes = quotesDao.all();

        req.setAttribute("quotes", quotes);
        req.getRequestDispatcher("/WEB-INF/quotes/quotes.jsp").forward(req, resp);
    }
}
