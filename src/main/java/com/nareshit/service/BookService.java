package com.nareshit.service;

import java.util.List;
import com.nareshit.domain.Book;

public interface BookService {

	public String feedbackBook(Book book);
	public List<Book> showfeedbackBook();
	public String removeFeedback(int book_id);
	public Book editFeedback(int book_id);
	public String updateFeedback(int book_id, String book_title, String book_author, String isbn_no,
			int cell_no, int row_no);
}
