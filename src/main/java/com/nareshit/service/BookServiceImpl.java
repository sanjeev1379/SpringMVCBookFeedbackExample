package com.nareshit.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.nareshit.dao.BookDAO;
import com.nareshit.domain.Book;
@Service
public class BookServiceImpl implements BookService{
	@Autowired
private BookDAO userDAO;
	public String feedbackBook(Book book) {
		String status="BOOK Feedback failure...";
		try{
			int count=userDAO.feedbackBook(book);
			if(count>0){
				status="BOOK Feedback Success";
			}
		}catch(DataAccessException de){
			status="Unable to procced...";
		}
	    return status;
	}
	public List<Book> showfeedbackBook() {
		List<Book> book=userDAO.showfeedbackBook();
		return book;
	}
	public String removeFeedback(int book_id) {
		String status="Feedback Delation failure...";
		try{
			int count=userDAO.removeFeedback(book_id);
			if(count>0){
				status="Feedback Deletion Success";
			}
		}catch(DataAccessException de){
			status="Unable to procced...";
		}
	    return status;

	}
	public Book editFeedback(int book_id) {
		Book edit_view=userDAO.editFeedback(book_id);
		return edit_view;
	}
	public String updateFeedback(int book_id, String book_title, String book_author, String isbn_no,
			int cell_no, int row_no) {
		String status="Book Feedback Update Failure..";
		try{
			int count=userDAO.updateFeedback(book_id,book_title,book_author,isbn_no,cell_no,row_no);
			if(count>0){
				status="Book Feedback Update Success";
			}
		}catch(DataAccessException de){
			status="Unable to procced...";
		}
	    return status;
	}
}
