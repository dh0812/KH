package com.bbs;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.MyAction;

public class BoardAction extends MyAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String mode=req.getParameter("mode");
		
		if(mode==null||mode.equals("list")) {
			//¸®½ºÆ®
			
			forward(req, resp, "/WEB-INF/views/bbs/list.jsp");
			
		}else if(mode.equals("created")) {
			
			forward(req,resp, "/WEB-INF/views/bbs/created.jsp");
		}
	}
abcd
}
