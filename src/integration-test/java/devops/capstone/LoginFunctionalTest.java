package devops.capstone;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import org.openqa.selenium.firefox.FirefoxOptions;

import devops.capstone.IntegrationTest;

import org.junit.*;
import static org.junit.Assert.*;

import java.io.File;

import org.junit.experimental.categories.Category;

@Category(IntegrationTest.class)
public class LoginFunctionalTest {

	static WebDriver driver;

	@BeforeClass
	public static void setup() {
	//	driver = new ChromeDriver();
		// new FirefoxDriver();
				FirefoxBinary firefoxBinary = new FirefoxBinary();
        firefoxBinary.addCommandLineOptions("--headless");
        System.setProperty("webdriver.gecko.driver", "/usr/bin/geckodriver");
        FirefoxOptions firefoxOptions = new FirefoxOptions();
        firefoxOptions.setBinary(firefoxBinary);
        
        driver = new FirefoxDriver(firefoxOptions);
	}

	@AfterClass
	public static void cleanUp() {
		driver.quit();
	}

	@Test
	public void loginSuccess() {
        driver.get("http://localhost:6080/capstone");
        WebElement email = driver.findElement(By.name("email"));
        WebElement pass = driver.findElement(By.name("password"));
        WebElement button = driver.findElement(By.xpath("/html/body/form/div/button"));         
        email.sendKeys("sagar.bajaj@wipro.com");
        pass.sendKeys("1234");
        button.click();
        assertTrue(driver.getPageSource().contains("SuccessPage"));
	}
	
	//@Test
	public void loginFail() {
        driver.get("http://localhost:6080/capstone");
        WebElement email = driver.findElement(By.name("email"));
        WebElement pass = driver.findElement(By.name("password"));
        WebElement button = driver.findElement(By.xpath("/html/body/form/div/button"));         
        email.sendKeys("sagar.bajaj@wipro.com");
        pass.sendKeys("1234566666666");
        button.click();
        assertTrue(driver.getPageSource().contains("Invalid username or password, Please try again with valid"));
	}
	
	@Test
	public void registrationSuccess() {
        driver.get("http://localhost:6080/capstone/register.jsp");
        WebElement firstname = driver.findElement(By.name("firstname"));
        WebElement lastname = driver.findElement(By.name("lastname"));
        WebElement confirmpass = driver.findElement(By.name("confirmpass"));
        WebElement email = driver.findElement(By.name("email"));
        WebElement pass = driver.findElement(By.name("pass"));
        WebElement custId = driver.findElement(By.name("custId"));
        WebElement button = driver.findElement(By.xpath("/html/body/form/div/button"));      
        firstname.sendKeys("fname");
        lastname.sendKeys("lname");
        pass.sendKeys("1234");
        confirmpass.sendKeys("1234");
        email.sendKeys("aa@gmail.com");
        custId.sendKeys("custId");
        button.click();
        assertTrue(driver.getPageSource().contains("capstone"));
	}
	
	@Test
	public void paymentSuccess() {
		 driver.get("http://localhost:6080/capstone/paymentGateway.jsp");	
		 WebElement custId = driver.findElement(By.name("custId"));
	     WebElement cardNo = driver.findElement(By.name("cardNo"));
	     WebElement amount = driver.findElement(By.name("amount"));
	     WebElement button = driver.findElement(By.xpath("/html/body/form/div/button"));   
	     custId.sendKeys("custId");
	     cardNo.sendKeys("cardNo");
	     amount.sendKeys("amount");
	     button.click();
	     assertTrue(driver.getPageSource().contains("capstone"));
	}
	
	@Test
	public void forgotPasswordSuccess() {
        driver.get("http://localhost:6080/capstone/forgotpassword.jsp");      
        WebElement confirmpass = driver.findElement(By.name("confirmpassword"));
        WebElement email = driver.findElement(By.name("email"));
        WebElement pass = driver.findElement(By.name("newpassword"));
        WebElement button = driver.findElement(By.xpath("/html/body/form/div/button"));      
        pass.sendKeys("1234");
        confirmpass.sendKeys("1234");
        email.sendKeys("sagar.bajaj@wipro.com");
        button.click();
        assertTrue(driver.getPageSource().contains("capstone"));
	}
	
}
