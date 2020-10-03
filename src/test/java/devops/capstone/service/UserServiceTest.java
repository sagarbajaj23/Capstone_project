package devops.capstone.service;

import static org.junit.Assert.*;

import org.junit.Test;

import devops.capstone.model.User;

public class UserServiceTest {

	@Test
	public void testIsAutherozied() {
		User u1=new User("Sagar","Bajaj","1234","sagarbajaj113@gmail.com","saga1234");
		assertEquals(true,new UserService().isAuthorized(u1));
	}

	@Test
	public void testUpdatePassword() {
		User u1=new User("","","9876","sagarbajaj113@gmail.com","saga1234");
		assertEquals(true,new UserService().updatePassword(u1));
	}

	@Test
	public void testDoRegistration() {
		User u1=new User("RAM","RAJ","1234","raj@wipro.com","ram3456");
		assertEquals(true,new UserService().doRegistration(u1));
	}

}
