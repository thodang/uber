import javax.naming.InitialContext;
import javax.sql.DataSource;


public class Connection {
	java.sql.Connection conn = null;
	
	public Connection(){		
		try{
			InitialContext context = new InitialContext();
			
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/mydb");
			
			conn =  ds.getConnection();
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		
	}
	public java.sql.Connection getConnection(){
		return conn;
	}


}
