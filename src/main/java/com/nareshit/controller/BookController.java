package com.nareshit.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nareshit.domain.Book;
import com.nareshit.service.BookService;

@Controller
public class BookController {

	@Autowired
	private BookService bookService;
	@RequestMapping(value="feedback",method=RequestMethod.GET)
public String showFeedbackForm(){
		return "/WEB-INF/pages/feedback.jsp";
}
	//@PostMapping
	@RequestMapping(value="feedback",method=RequestMethod.POST)
	public ModelAndView feedback(@ModelAttribute("book") Book book){
		String status=bookService.feedbackBook(book);
		System.out.println(status);
		List<Book> book_view=bookService.showfeedbackBook();
		System.out.println(book_view);
		return new ModelAndView("/WEB-INF/pages/display.jsp","book_view",book_view);
	}
	
	@RequestMapping(value="go_back",method=RequestMethod.GET)
	public String showGoBackHome(){
			return "/WEB-INF/pages/home.jsp";
	}
	
	@RequestMapping(value="remove",method=RequestMethod.GET)
	public ModelAndView removeFeedback(@RequestParam("remove") int book_id){
		String remove_status=bookService.removeFeedback(book_id);
		System.out.println(remove_status);
		List<Book> book_view=bookService.showfeedbackBook();
		return new ModelAndView("/WEB-INF/pages/display.jsp","book_view",book_view);
	}
	
	@RequestMapping(value="edit",method=RequestMethod.GET)
	public ModelAndView EditFeedback(@RequestParam("edit") int book_id){
		Book edit_view=bookService.editFeedback(book_id);
		System.out.println(edit_view);
	return new ModelAndView("/WEB-INF/pages/update.jsp","edit_view",edit_view);
	}
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	public ModelAndView EditFeedbackView(
			@RequestParam("book_id") int book_id,
			@RequestParam("book_title") String book_title,
			@RequestParam("book_author") String book_author,
			@RequestParam("isbn_no") String isbn_no,
			@RequestParam("cell_no") int cell_no,
			@RequestParam("row_no") int row_no
			){
		String status=bookService.updateFeedback(book_id,book_title,book_author,isbn_no,cell_no,row_no);
		System.out.println(status);
		List<Book> book_view=bookService.showfeedbackBook();
		System.out.println(book_view);
		return new ModelAndView("/WEB-INF/pages/display.jsp","book_view",book_view);
	}
	
	
	
	
	
	
	
	
	/*@RequestMapping(value="show_feedback",method=RequestMethod.GET)
	public ModelAndView showfeedback(){
		
		List<Book> book=bookService.showfeedbackBook();
		System.out.println(book);
		return new ModelAndView("/WEB-INF/pages/feedback.jsp","book",book);
	
	}*/
	
	
}

