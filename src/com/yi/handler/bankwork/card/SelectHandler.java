package com.yi.handler.bankwork.card;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yi.mvc.CommandHandler;

public class SelectHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String div = req.getParameter("div");
		if(div.equals("add")) {
			return "/WEB-INF/view/bankwork/card/cardAddCustSelect.jsp";
		}
		else {
			return "/WEB-INF/view/bankwork/card/cardListCustSelect.jsp";
		}
	}

}
