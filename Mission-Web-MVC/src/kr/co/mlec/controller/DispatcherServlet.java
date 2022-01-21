package kr.co.mlec.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet {

	private HandlerMapping mappings = null;

	@Override
	public void init(ServletConfig config) throws ServletException {

		String propLoc = config.getInitParameter("propLocation");
		// System.out.println("prop :" +propLoc);

		mappings = new HandlerMapping(propLoc);
	}

	
	@Override
	// 요청객체 통해 uri,contextPath 받아옴
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uri = request.getRequestURI();
		String context = request.getContextPath();
		uri = uri.substring(context.length());
		System.out.println("요청 URI : " + uri);

		try {
			// HandlerMapping mappings = new HandlerMapping();
			Controller control = mappings.getController(uri);

			String callPage = control.handleRequest(request, response);

			// forward or sendRedirect - > redirect 붙일때만 선택 
			if(callPage.startsWith("redirect:")) {
	            callPage = callPage.substring("redirect:".length());
	            response.sendRedirect(request.getContextPath() + callPage);
	         }else {
	            RequestDispatcher dispatcher = request.getRequestDispatcher(callPage);
	            dispatcher.forward(request, response); //jsp에 넘겨주려고 forward
	         }

		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException(e);
		}

	}

}
