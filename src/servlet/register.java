package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.jdbcUtil;

import bean.user;


public class register extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public register() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		request.setCharacterEncoding("GBK");
		response.setCharacterEncoding("GBK");
		PrintWriter out = response.getWriter();
		
		String username=request.getParameter("username");  
        String password=request.getParameter("password"); 
        String pubKey=request.getParameter("pubKey"); 
        String enMess=request.getParameter("enMess"); 
        String sha=request.getParameter("sha");
        String rsa=request.getParameter("rsa");
        Connection conn = new jdbcUtil().getConnection();
        
        String sql = "insert into user(username,password,pubKey,enMess) values (?,MD5(?),?,?)";
        PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
		
			ps.setString(1,username);
			ps.setString(2,password);
			ps.setString(3,pubKey);
			ps.setString(4,enMess);
			
			ps.executeUpdate();

			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
		

    }

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
