package com.yc.novel.web.handler;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	@RequestMapping(value="{sorts}" , method=RequestMethod.GET)
 	public List<Book> getDetails(String bookSortName){
		 return bookService.getBooksByTypes("名著");
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
		System.out.println("进入。。。");
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
	public boolean add(@RequestParam("picData")MultipartFile picData,Book book){
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
		return bookService.addBooks(book);
	}
}

