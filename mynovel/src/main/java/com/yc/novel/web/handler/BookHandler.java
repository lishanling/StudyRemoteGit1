package com.yc.novel.web.handler;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.PaginationBean;
import com.yc.novel.service.BookService;
import com.yc.novel.util.ServletUtil;


@Controller("bookHandler")
@RequestMapping("book")
public class BookHandler {

	@Autowired
	private BookService bookService;

	@ResponseBody
	@RequestMapping(value="{sortDetail}" , method=RequestMethod.GET)
 	public List<Book> getSortsDetails(String bookSortName){
		return bookService.getBooksByTypes(bookSortName);
   	}

	@ResponseBody
	@RequestMapping(value="{bookinfo}" , method=RequestMethod.POST)
 	public Book getBookDetails(String bookId,HttpSession session){
		Book b=bookService.getBookById(bookId);

		return b;
  	}
	@ResponseBody
	@RequestMapping(value="/sorts" , method=RequestMethod.POST)
 	public List<Book> getDetails(String bookSortName) throws UnsupportedEncodingException{
		bookSortName= URLDecoder.decode(bookSortName, "utf-8");
		return bookService.getBooksByTypes(bookSortName);
  	} 

	//分页显示图书信息
	@RequestMapping("list")
	@ResponseBody
	public PaginationBean<Book> list(String rows,String page){
		return bookService.listPartBooks(page,rows);
	}
	//显示图书信息
	@RequestMapping("recommendinfo")
	@ResponseBody
		public List<Book> bookInfo(){
			return bookService.findAllbook();
	}

	@RequestMapping("modify")
	@ResponseBody
	public boolean modify(@RequestParam("picData") MultipartFile picData,Book book){
		String bpic=null;
		if(picData!=null&&!picData.isEmpty()){//判断是否有文件上传
			try {
				picData.transferTo(ServletUtil.getUploadFile(picData.getOriginalFilename()));
				bpic=ServletUtil.VIRTUAL_UPLOAD_DIR+picData.getOriginalFilename();
				System.out.println(bpic);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		book.setBpic(bpic);
		return bookService.updateBooks(book);
	}

	@RequestMapping("add")
	@ResponseBody
	public boolean add(@RequestParam("picData") MultipartFile picData,Book book){

		String bpic=null;
		if(picData!=null&&!picData.isEmpty()){//判断是否有文件上传
			try {
				picData.transferTo(ServletUtil.getUploadFile(picData.getOriginalFilename()));
				bpic=ServletUtil.VIRTUAL_UPLOAD_DIR+picData.getOriginalFilename();
				System.out.println(bpic);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		book.setBpic(bpic);
		HttpServletRequest request = null;
		//String sname=request.getParameter("sname");
		String sname="爱情";
		return bookService.insertBooks(book, sname);

	}
	@RequestMapping("delete")
	@ResponseBody
	public boolean del(String bid){
		return bookService.delbook(bid);
	}
	//搜索
	@ResponseBody
	@RequestMapping(value="/search" , method=RequestMethod.POST)
	public List<Book> search(String contend) throws UnsupportedEncodingException{
		contend= URLDecoder.decode(contend, "utf-8");
		System.out.println(contend);
		return bookService.selectBook(contend);
	}
}

