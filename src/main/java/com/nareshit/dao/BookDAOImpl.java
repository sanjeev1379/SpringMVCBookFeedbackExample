package com.nareshit.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.nareshit.domain.Book;

@Repository
public class BookDAOImpl implements
BookDAO{
     @Autowired
	private JdbcTemplate jdbcTemplate;

	public int feedbackBook(Book book) {
	String sql="insert into Book_feedback values(?,?,?,?,?,?,?)";
	int count=jdbcTemplate.update(sql,book.getBook_id(),book.getBook_title(),book.getBook_author(),book.getIsbn_no(),book.getBook_file(),book.getCell_no(),book.getRow_no());
	return count;
	}

	public List<Book> showfeedbackBook() {
		String sql="select book_id,book_title,book_author,isbn_no,book_file,cell_no,row_no from Book_feedback";
		return  jdbcTemplate.query(sql, new ResultSetExtractor<List<Book>>() {
         List<Book> listBook=new ArrayList<Book>();
         Book book=null;
			public List<Book> extractData(ResultSet rs) throws SQLException, DataAccessException {
				while(rs.next()){
					book=new Book();
					book.setBook_id(rs.getInt("book_id"));
					book.setBook_title(rs.getString("book_title"));
					book.setBook_author(rs.getString("book_author"));
					book.setIsbn_no(rs.getString("isbn_no"));
					book.setBook_file(rs.getString("book_file"));
					book.setCell_no(rs.getInt("cell_no"));
					book.setRow_no(rs.getInt("row_no"));
					listBook.add(book);
				}
				return listBook;
			}
		});
	}

	public int removeFeedback(int book_id) {
		String sql="delete from Book_feedback where book_id=?";
		int count=jdbcTemplate.update(sql,book_id);
		return count;
	}

	public Book editFeedback(int book_id) {
		String sql="select book_id,book_title,book_author,isbn_no,book_file,cell_no,row_no from Book_feedback where book_id=?";
	    BookRowMapper rowMapper=new BookRowMapper();
	    Book edit_view=jdbcTemplate.queryForObject(sql, rowMapper,book_id);
	    return edit_view;	
	}
	private class BookRowMapper implements RowMapper<Book>{
		Book book_view=null;
		public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
			book_view=new Book();
			book_view.setBook_id(rs.getInt("book_id"));
			book_view.setBook_title(rs.getString("book_title"));
			book_view.setBook_author(rs.getString("book_author"));
			book_view.setIsbn_no(rs.getString("isbn_no"));
			book_view.setBook_file(rs.getString("book_file"));
			book_view.setCell_no(rs.getInt("cell_no"));
			book_view.setRow_no(rs.getInt("row_no"));
			return book_view;
		}
		
	}
	public int updateFeedback(final int book_id, final String book_title, final String book_author,final String isbn_no,
			final int cell_no,final int row_no) {
		String sql="update Book_Feedback set book_title=?,book_author=?,isbn_no=?,cell_no=?,row_no=? where book_id=?";
		int count=jdbcTemplate.update(sql, new PreparedStatementSetter() {
			public void setValues(PreparedStatement pst) throws SQLException {
				pst.setString(1, book_title);
				pst.setString(2, book_author);
				pst.setString(3, isbn_no);
				//pst.setString(4, book_file);
				pst.setInt(4, cell_no);
				pst.setInt(5, row_no);
				pst.setInt(6, book_id);
			}
		});
		return count;
	}

}
