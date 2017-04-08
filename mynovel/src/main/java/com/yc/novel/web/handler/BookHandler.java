package com.yc.novel.web.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Book;
import com.yc.novel.service.BookService;

 
@Controller("bookHandler")
@RequestMapping("book")
public class BookHandler {
	
	@Autowired 	
	private BookService service;
	
	@ResponseBody
	@RequestMapping(value="{sorts}" , method=RequestMethod.GET)
 	public List<Book> getDetails(String bookSortName){
			
		 System.out.println("bookSortName====>" + bookSortName);
		 return service.getBooksByTypes("名著");
  	} 
	
	
}
