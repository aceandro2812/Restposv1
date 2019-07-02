package restman;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");  
         PrintWriter out=response.getWriter();  
           
         request.getRequestDispatcher("Index.jsp").include(request, response);  
           
         HttpSession asession=request.getSession(); 
         response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
         if( asession.getAttribute("id")==null) {
        	 response.sendRedirect("Index.jsp");	
        }
     
         asession.invalidate();  
         
           
         out.close();  
	}

}
