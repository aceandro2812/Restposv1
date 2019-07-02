package restman;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("fname") ;
		int qty=Integer.parseInt(request.getParameter("fqty"));
		String cname=request.getParameter("cname");
		int tableno=Integer.parseInt(request.getParameter("tno"));
		String email=request.getParameter("email");
		PrintWriter out = response.getWriter();
		
		//--------------------------------------------------------------------------------------------------------------------------
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restpos","root","root"); 
		PreparedStatement st1 = con.prepareStatement("insert into Customers(CustName,Custemail) values(?, ?)"); 
		st1.setString(1, cname);
		st1.setString(2, email);
		st1.executeUpdate();
		//----------------------------------------------------------------------------------------------------------------------------
		PreparedStatement st = con.prepareStatement("insert into Orders ( Foodname,Quantity,Tableno,Custemail) values(?, ?,?,?)"); 
		st.setString(1, fname);
		st.setInt(2, qty);
		st.setInt(3, tableno);
		st.setString(4, email);
		st.executeUpdate();
		
		// Close all the connections 
		out.println("Fuck You");
      response.sendRedirect("Orders.jsp");
        
	}catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}  
		
		
		
	}

}
