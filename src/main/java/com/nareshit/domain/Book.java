package com.nareshit.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Book implements Serializable{
	private Integer book_id;
private String book_title,book_author,isbn_no,book_file;
private Integer cell_no,row_no;
public Integer getBook_id() {
	return book_id;
}
public void setBook_id(Integer book_id) {
	this.book_id = book_id;
}
public String getBook_title() {
	return book_title;
}
public void setBook_title(String book_title) {
	this.book_title = book_title;
}
public String getBook_author() {
	return book_author;
}
public void setBook_author(String book_author) {
	this.book_author = book_author;
}
public String getIsbn_no() {
	return isbn_no;
}
public void setIsbn_no(String isbn_no) {
	this.isbn_no = isbn_no;
}
public String getBook_file() {
	return book_file;
}
public void setBook_file(String book_file) {
	this.book_file = book_file;
}
public Integer getCell_no() {
	return cell_no;
}
public void setCell_no(Integer cell_no) {
	this.cell_no = cell_no;
}
public Integer getRow_no() {
	return row_no;
}
public void setRow_no(Integer row_no) {
	this.row_no = row_no;
}
@Override
public String toString() {
	return "Book [book_id=" + book_id + ", book_title=" + book_title + ", book_author=" + book_author + ", isbn_no="
			+ isbn_no + ", book_file=" + book_file + ", cell_no=" + cell_no + ", row_no=" + row_no + "]";
}

}
