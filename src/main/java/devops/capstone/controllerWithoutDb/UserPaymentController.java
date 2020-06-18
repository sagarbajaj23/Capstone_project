package devops.capstone.controllerWithoutDb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import devops.capstone.model.User;
import devops.capstone.service.UserService;

public class UserPaymentController extends HttpServlet{
	
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String custId=request.getParameter("custId");
		String cardNo=request.getParameter("cardNo");
		String amount=request.getParameter("amount");
		
		if (custId.isEmpty() || cardNo.isEmpty() || amount.isEmpty()) {
			  RequestDispatcher rd = request.getRequestDispatcher("paymentGateway.jsp");
			   out.println("<font color=red>Please fill all the fields</font>");
			   rd.include(request, response);
			  } else {
				
				  User user=new User("","","","",custId);

					PrintWriter pout= response.getWriter();
					if (new UserService().checkCustomerId(user)) {
						pout.write("Customer Id Exists...");
					    if (cardNo!=null && cardNo.length()==12) {
					    	pout.write("Valid Card details ..");
					    
					      if(amount!=null && Integer.parseInt(amount)>0) {
					    	  pout.write("Valid Amount details");
					      
						RequestDispatcher rd = request.getRequestDispatcher("/success.jsp");
						rd.forward(request,response);
						return;
						}
					  }
					}
					pout.write("Something Went Wrong !!! Please Try Again");
					 
					RequestDispatcher rd = request.getRequestDispatcher("/fail.jsp");
					rd.forward(request,response);
					
					
			  }
	}

}
