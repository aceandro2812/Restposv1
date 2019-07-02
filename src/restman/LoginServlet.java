package restman;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;


@SuppressWarnings("unused")
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
String uname=	request.getParameter("uname");
String upass=	request.getParameter("upass");

			try {
				Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restpos","root","root"); 	
			PreparedStatement ps=con.prepareStatement("select * from users_login where uname=? and upass=?");  
			ps.setString(1,uname);
			ps.setString(2, upass);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				
				  HttpSession asession=request.getSession();  
			        asession.setAttribute("name",uname); 
			       
				response.sendRedirect("Analytics.jsp");
			}else {
				 
				out.write("<script>alert(\"Invalid Credentials\");"
						+ " location.replace(\"Index.jsp\")" + 
						"</script>");
	
		
			}
	
	
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  

}
}
