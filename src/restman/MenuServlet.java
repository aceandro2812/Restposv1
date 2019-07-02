package restman;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





public class MenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=	request.getParameter("fname");
		int fqty=Integer.parseInt(	request.getParameter("fqty"));
		float fpric=Float.parseFloat(	request.getParameter("fpric"));
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restpos","root","root"); 	
		PreparedStatement st = con.prepareStatement("insert into menu(Foodname,Quantity,Price) values(?, ?,?)"); 
		st.setString(1, fname);
		st.setInt(2, fqty);
		st.setFloat(3, fpric);
		st.executeUpdate();
		// Close all the connections 
		
      response.sendRedirect("Menu.jsp");
        
	}catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}  

}
}
