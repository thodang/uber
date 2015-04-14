import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/uberina-web/servlet1")
public class UberServlet extends HttpServlet {
	
	Connection con=null;
	java.sql.Connection conn = null;
	PrintWriter out;
	
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		
		String username = req.getParameter("name3");
		String password = req.getParameter("password1");
		String email = req.getParameter("email1");
		

		try{			
			con = new Connection();			
			conn = con.getConnection();
			out = resp.getWriter();
			
		}catch(Exception e){
			out.println(e.getMessage());
			out.println("error. can't add data into database");
			
		}
		//out.println(username + password + email);
		//resp.sendRedirect("info.jsp");
		addData(username, password,email);
		resp.setContentType("text/html");
	    req.getRequestDispatcher("signup_info.jsp").forward(req, resp);		
		
	}
	
	
	
	protected void addData(String username, String password,String email){
		Random rn = new Random();
		int driver_id = rn.nextInt(100) + 1;
		try{
			
			PreparedStatement statement = conn.prepareStatement("insert into drivers(username,password,email) values(?,?,?)");
			statement.setString(1, username);
			statement.setString(2, password);
			statement.setString(3, email);
			statement.executeUpdate();
			conn.close();
			statement.close();
			out.println("Done inserting");
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
	}
	
	protected void deleteData(String name_del){

		try{
			
			PreparedStatement statement = conn.prepareStatement("delete from drivers where firstname = ?");
			statement.setString(1, name_del);
			statement.executeUpdate();
			conn.close();
			statement.close();
			
			out.println("Done deleting");
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
	}

}
