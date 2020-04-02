package com.yi.handler.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yi.dto.Notice;
import com.yi.mvc.CommandHandler;
import com.yi.service.NoticeService;

public class MainHandler implements CommandHandler {
	private NoticeService service = new NoticeService();
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Notice> list = service.showNoticeByAll();
		req.setAttribute("list", list);
		return "/WEB-INF/view/main/mainSection.jsp";
	}

}