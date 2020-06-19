package devops.capstone.db;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import devops.capstone.model.User;

public class UserDb {
	
	public static String[][] users;
	public static List<String> usersData= new ArrayList<String>();
	
	public static Map<String, User> userProfile=new HashMap<String,User>();
	
	public UserDb(){
		
		User u1=new User("Sagar","Bajaj","1234","sagar.bajaj@wipro.com","saga1234");
		User u2=new User("Trimula","Sivananda","abcd","tirumala.sivananda@wipro.com","trimu4567");
		User u3=new User("Raghavendra","Krishna Simha","pqrs","raghavendra.simha@wipro.com","ragha6789");
	
		
		userProfile.put(u1.getEmail(), u1);
		userProfile.put(u2.getEmail(), u2);
		userProfile.put(u3.getEmail(), u3);
		
		usersData.add(u1.getCustomerId());
		usersData.add(u2.getCustomerId());
		usersData.add(u3.getCustomerId());
		
	}
	


}
