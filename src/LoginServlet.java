import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/uberina-web/servlet2")
public class LoginServlet extends HttpServlet {

	Connection con= new Connection();
	java.sql.Connection conn = null;
	PrintWriter out;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		
		String username = req.getParameter("name3");
		String password = req.getParameter("password1");

		ResultSet rs = null;

		try{			
			conn = con.getConnection();		
			out = resp.getWriter();
			
			
			
			
		}catch(Exception e){
			out.println(e.getMessage());		
		}
		rs=getResultSet(username,password);
		
		req.setAttribute("resultSet", rs);	
		HttpSession session = req.getSession();
		session.setAttribute("rs", rs);
		req.getRequestDispatcher("driver.jsp").forward(req, resp);
		
		
		
		
	}
	public ResultSet getResultSet(String username, String password){
		ResultSet rs = null;
		try{
			
			PreparedStatement statement = conn.prepareStatement("select * from drivers where username=? AND password=?");
			statement.setString(1, username);
			statement.setString(2, password);
			rs=statement.executeQuery();		
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}		
		return rs;
		
	}

}
