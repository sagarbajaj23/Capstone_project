package devops.capstone.controllerWithoutDb;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;
import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;
import org.apache.commons.io.FileUtils;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;

import devops.capstone.controllerWithoutDb.UserPaymentController;

public class PaymentTest extends Mockito{
	
	@Mock
	 HttpServletRequest request;
	 @Mock
	 HttpServletResponse response;
	 @Mock
	 RequestDispatcher rd;
	 @Before
	 public void setUp() throws Exception {
	  MockitoAnnotations.initMocks(this);
	 }

   @Test
   public void testPaymentSuccess() throws Exception {
       when(request.getParameter("custId")).thenReturn("saga1234");
       when(request.getParameter("cardNo")).thenReturn("123456789123");
       when(request.getParameter("amount")).thenReturn("2400");
       when(request.getRequestDispatcher("/success.jsp")).thenReturn(rd);            
       StringWriter stringWriter = new StringWriter();
       PrintWriter writer = new PrintWriter(stringWriter);
       when(response.getWriter()).thenReturn(writer);
       new UserPaymentController().doPost(request, response);
    
       verify(rd).forward(request, response);
       
       String result = stringWriter.getBuffer().toString().trim();
       assertEquals("Payment Successful..!!", result);
     
   }
}
