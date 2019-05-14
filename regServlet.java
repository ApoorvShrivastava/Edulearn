import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user;
import dbhandler;

/**
 * Servlet implementation class regServlet
 */
@WebServlet("/regServlet")
public class regServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public regServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String fname=request.getParameter("fname");

		String lname=request.getParameter("lname");

		String gender=request.getParameter("gender");

		String bday=request.getParameter("dob");

		String email=request.getParameter("email");

		String password=request.getParameter("passkey");
		String password2=request.getParameter("confirmpass");
				
		if(password=="null")
		out.println("Password can't be blank");
		if(!(password.equals(password2)))
		out.println("Password Do Not Match");

		String address=request.getParameter("address");

		String mobile=request.getParameter("mobile");

		
		InputStream inputStream = null;	// input stream of the upload file
		Part filePart = request.getPart("pic");
		inputStream = filePart.getInputStream();
		
		
		
		user newuser = new user();
		newuser.setID();
		newuser.setsetFirstName(fname);
		newuser.setLastName(lname);
		newuser.setgender(gender);
		newuser.setbday(bday);
		newuser.setEmail(email);
		newuser.setPassword(password);
		newuser.setAddress(address);
		newuser.setMobile(mobile);
			
		
		dbhandler doQuery = new dbhandler();
		doQuery.getConnection();
		doQuery.getDatabaseConnection();
		int i = doQuery.executeQuery(reg);
		if(i > 0)
		{
			RequestDispatcher rd = request.getRequestDispatcher("regconnection.jsp");
			rd.include(request, response);
			session.setAttribute("user", id);
		}
		doQuery.close();	
	}

}
