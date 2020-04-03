package com.yi.handler.cust;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yi.dto.Customer;
import com.yi.mvc.CommandHandler;
import com.yi.service.CustomerService;

public class custInsertHandler implements CommandHandler {
	private CustomerService service = new CustomerService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			List<Customer> list = service.showNormalCustomer();
			String nextCustNum = "C"+String.format("%03d", list.size()+1);
			req.setAttribute("nextCustNum", nextCustNum);
			
			return "/WEB-INF/view/cust/newCustForm.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {   
			List<Customer> list = service.showNormalCustomer();
			String nextCustNum = "C"+String.format("%03d", list.size()+1);
			String code = nextCustNum;
			String name = req.getParameter("name");
			String rank = req.getParameter("rank");
			String credit = req.getParameter("credit");
			String addr = req.getParameter("addr");
			String contact1 = req.getParameter("contact1");
			String contact2= req.getParameter("contact2");
			String contact3 = req.getParameter("contact3");
			String contact = contact1+"-"+contact2+"-"+contact3;
			Boolean custDiv = false;
			  
			try {
				if(rank.equals("Diamond")) {
					rank = "D";
				}else if(rank.equals("Platinum")) {
					rank = "P";
				}else if(rank.equals("Gold")) {
					rank = "G";       
				}else if(rank.equals("Silver")) {
					rank = "S";
				}else if(rank.equals("Bronze")) {
					rank = "B";
				}  
				Customer customer = new Customer(code, name, rank, Integer.parseInt(credit), addr, contact, custDiv);
				service.AddCustomer(customer);
				res.sendRedirect(req.getContextPath()+"/cust/custSearch.do");
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		
		return null;
	}

}
