package com.buxz.online_exam.servlet3.system;

import com.buxz.online_exam.entity.UserInfo;
import com.buxz.online_exam.service.SystemService;

import java.io.IOException;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/***
 * 设计思想
 * 
 * 类 SystemLogin
 * 
 * 该类负责用户相关的操作，登陆、注册、退出、操作
 * 
 * 这里我们使用4种请求方式 put、delete、get、post，对每种请求各司其职。
 * 1、get请求负责路径转发，查找
 * 2、delete请求负责删除数据
 * 3、put请求负责更新
 * 4、post请求负责新增
 * 
 * 
 *
 */

@WebServlet(urlPatterns="/syslogin",asyncSupported=false)
public class SystemLogin extends HttpServlet{

	private static final SystemService systemService = new SystemService();
	
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doDelete(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Map<String, String[]> parmMap = req.getParameterMap();
		for (Entry<String, String[]> entry:parmMap.entrySet()){
			System.out.println(entry.getKey()+":"+entry.getValue()[0]);
			
		}
	}

	/* 
	 *	
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		if (session.getAttribute(UserInfo.username.toString())!=null){
			req.getRequestDispatcher("WEB-INF/view/main.jsp").forward(req, resp);
		}else{
			resp.sendRedirect("login.jsp?msg=1");
		}
	}

	/* The beauty of the code
	 * 
	 * 
	 * 
	 */
	@SuppressWarnings("unused")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username = req.getParameter(UserInfo.username.toString());
		String password = req.getParameter(UserInfo.password.toString());
		
		Map<String, Object> userInfoMap = systemService.selectUserInfoByUsername(username);
		if (userInfoMap != null){
			String passwordFromDatabase = (String)userInfoMap.get(UserInfo.password.toString());
			if (password!=null&&password.equals(passwordFromDatabase)){
				req.getSession().setAttribute("userInof", userInfoMap);
				req.getSession().setAttribute(UserInfo.username.toString(),userInfoMap.get(UserInfo.username.toString()));
				//转发视图
				req.getRequestDispatcher("WEB-INF/view/main.jsp").forward(req, resp);
			}else{
				resp.sendRedirect("/login?msg=1");
			}
		}
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPut(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Map<String, String[]> parmMap = req.getParameterMap();
		for (Entry<String, String[]> entry:parmMap.entrySet()){
			System.out.println(entry.getKey()+":"+entry.getValue()[0]);
			
		}
	}

	
	
}
