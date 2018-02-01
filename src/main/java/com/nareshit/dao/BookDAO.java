package com.nareshit.dao;

import java.util.List;
import com.nareshit.domain.Book;

public interface BookDAO {

 public	int feedbackBook(Book book);
 public List<Book> showfeedbackBook();
public int removeFeedback(int book_id);
public Book editFeedback(int book_id);
public int updateFeedback(int book_id, String book_title, String book_author, String isbn_no,
		int cell_no, int row_no);
}
