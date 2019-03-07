package com.buxz.online_exam.servlet3.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01 extends HttpServlet{

	@WebServlet(urlPatterns = "/demo", asyncSupported = true)
	public class AsyncDemoServlet extends HttpServlet {
	    @Override
	    public void doGet(HttpServletRequest req, HttpServletResponse resp)
	    throws IOException, ServletException {
	        resp.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = resp.getWriter();
	        out.println("½øÈëServletµÄÊ±¼ä£º" + new Date() + ".");
	        out.flush();

	        //ÔÚ×ÓÏß³ÌÖÐÖ´ÐÐÒµÎñµ÷ÓÃ£¬²¢ÓÉÆä¸ºÔðÊä³öÏìÓ¦£¬Ö÷Ïß³ÌÍË³ö
	        AsyncContext ctx = req.startAsync();
	        new Thread(new Executor(ctx)).start();

	        out.println("½áÊøServletµÄÊ±¼ä£º" + new Date() + ".");
	        out.flush();
	    }
	}

	public class Executor implements Runnable {
	    private AsyncContext ctx = null;
	    public Executor(AsyncContext ctx){
	        this.ctx = ctx;
	    }

	    public void run(){
	        try {
	            //µÈ´ýÊ®ÃëÖÓ£¬ÒÔÄ£ÄâÒµÎñ·½·¨µÄÖ´ÐÐ
	            Thread.sleep(10000);
	            PrintWriter out = ctx.getResponse().getWriter();
	            out.println("ÒµÎñ´¦ÀíÍê±ÏµÄÊ±¼ä£º" + new Date() + ".");
	            out.flush();
	            ctx.complete();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}
}
