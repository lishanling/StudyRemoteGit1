package com.yc.novel.web.handler;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.yc.novel.entity.Discuss;
import com.yc.novel.service.DiscussServcie;

@Controller("discussHandler")
@RequestMapping("discuss")
public class DiscussHandler {
	@Autowired
	private DiscussServcie discussService;

	@RequestMapping("find")
	@ResponseBody
	public List<Discuss> bookInfo(){
		return discussService.findAllDiscuss();
	}

	@ResponseBody 
	@RequestMapping(value="info")
	public List<Discuss> getInfo(String id){
		return	discussService.getDiscussById(id);		 
	}
	@ResponseBody 
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public boolean addInfo(String bid,String usid,String dcontent) throws UnsupportedEncodingException{
		Discuss discuss=new Discuss();
		dcontent= URLDecoder.decode(dcontent, "utf-8");
		java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
		discuss.setDtime(currentDate);
		discuss.setBid(bid);;
		discuss.setUsid(usid);
		discuss.setDcontent(dcontent);
		return	discussService.insertDiscuss(discuss);		 
	}


}
