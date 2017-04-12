/*package com.yc.novel.web.handler;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.novel.entity.Book;
import com.yc.novel.entity.Collects;
import com.yc.novel.service.CollectsService;



@Controller
@RequestMapping("collect")
public class CollectsHandler {
	@Autowired
	private CollectsService collectsService;

	@RequestMapping("get")
	@ResponseBody
	public boolean getDetails(String bid,String usid){
		System.out.println("sdf");
		System.out.println(bid);
		
		HttpSession session=null;
		//String session.getAttribute("");
		Collects collects=new Collects();
		collects.setBid(bid);
		Users user=(Users) session.getAttribute("loginUser");
		collects.setUsid(user.getUsid());
		return true;
	}

	@RequestMapping(value="/{id}",method=RequestMethod.GET)
	@ResponseBody
	public List<Collects> collectInfo(@PathVariable("id")String id){
		return collectsService.findCollects(id);
	}

	@RequestMapping("bookinfo")
	@ResponseBody
	public List<Collects> collectBook(){
<<<<<<< HEAD
		 return collectsService.findBook();
	}	

		return collectsService.findBook();
	}

	@Resource(name="collectsServiceImpl")
	public void setCollectsService(CollectsService collectsService) {
		this.collectsService = collectsService;
	}

	@RequestMapping("collectsBook")
	@ResponseBody
	public List<Collects>  CollectsBook(){
		return collectsService.CollectsBook();
	}

	@RequestMapping("/toDayList.action")
	public String DayList(Model model){
		List<Book> list= collectsService.DayList();
		model.addAttribute("book",list);
		return "back/list";
	}

	@RequestMapping("/toMonthList.action")
	public String MonthList(Model model){
		List<Book> list= collectsService.MonthList();
		model.addAttribute("book",list);
		return "back/list";
	}

<<<<<<< HEAD
	@RequestMapping("/toList.action")
	//@ResponseBody
=======
	@RequestMapping("/toList.action")
	public String AllList(Model model){
		List<Book> list= collectsService.AllList();
		model.addAttribute("book",list);
		return "back/list";
	}

	@RequestMapping("/toAllList.action")
>>>>>>> branch 'master' of ssh://git@github.com/lishanling/StudyRemoteGit1
	public String LatestList(Model model){
		List<Book> list= collectsService.LatestList();
		model.addAttribute("book",list);
		return "back/list";
	}
	
	@RequestMapping("/toList.action")
	//@ResponseBody
	public String LatestList01(Model model){
		List<Book> list= collectsService.findBook();
		model.addAttribute("book",list);
		return "back/userinfo";
	}
}
*/