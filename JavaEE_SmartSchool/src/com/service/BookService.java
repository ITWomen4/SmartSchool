package com.service;

import java.util.List;

import com.entity.Book;

public interface BookService {

	public List<Book> showbooks();

	public List<Book> mybook(String currentUserId);

	public int delBook(int currentBookId);

	public int pubook(Book book);
}
