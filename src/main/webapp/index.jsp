<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

#header {
position: relative;
padding: 28px;
height: 50px;
background: #0a7f99;
color: #ffffff;
text-shadow: 2px 2px 2px rgba(0,0,0,0.5);
box-shadow: inset 0px -40px 60px 0px #005B6D;
border-bottom: solid 1px #003B47;
}

#outer {
z-index: 3;
width: 1180px;
margin: -10 60px 10 60px;
background: #ffffff;
box-shadow: 0px 0px 60px 0px rgba(0,0,0,0.2);
}

button {
    background-color:#008080 ;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

h1,h2,h3,h4 {
text-transform: uppercase;
font-weight: normal;
letter-spacing: -1px;
}

h2,h3,h4 {
margin-bottom: 1.5em;
font-family: Arvo, serif;
color: #000000;
}



#logo {
position: absolute;
bottom: 0;
left: 28px;
height: 138px;
line-height: 138px;
}

#logo a {
text-decoration: none;
color: #008080;
}

#logo h1 {
font-size: 2.25em;
font-family: Arvo, serif;
}

button:hover {
    opacity: 0.8;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

#banner {
position:relative;
text-align: center;
}

#banner.captions {
position: absolute;
right: 0;
top: 105px;
text-shadow: 2px 2px 0px rgba(0,0,0,1.0);
}

#banner.captions h2 {
background: rgba(0,0,0,0.7);
color: #008080;
padding: 28px;
margin: 0;
}

#banner.captions h3 {
background: rgba(10,127,153,0.8);
color: #008080;
padding: 28px;
margin: 0;
}

#nav {
top: 0;
left: 0;
padding: 0 28px 0 28px;
width: 1124px;
height: 48px;
line-height: 48px;
margin: 0 0 28px 0;
background: #007289;
font-size: 0.9em;
border-bottom: solid 1px #009FBF;
border-top: solid 1px #1098B3;
box-shadow: inset 0px -10px 40px 0px #005B6D;
}

#nav a {
text-decoration: none;
text-transform: uppercase;
color: #ffffff;
}

#nav ul {
list-style: none;
}

#nav ul li {
display: inline;
padding: 0 12px 0 12px;
}

#nav ul li.first {

padding-left: 0
}


/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
}
</style>
</head>
<body>
<div id="outer">
<div id="header">
	<div id="logo">
		<h1>Utility Bill Payment</h1>
	</div>
</div>
	<div id="banner">
	<div class="captions">
	<img src="images/banner.jpg" alt="" />
	<h2>Sign in</h2>
	</div>
</div>
  <div id="nav">
  		<ul>
  			<li class="first">
  				<a href="forgotpassword.jsp">Forgot password?</a>
  			</li>
  			<li>
  				<a href="register.jsp" id="register">New Registration?</a>
  			</li>
  		</ul>						
	  </div>
	<form action="Login" method="post">
	  <div class="container" >
	    <label><b>Email</b></label>
	    <input type="text" placeholder="Enter Email" name="email" required>
	
	    <label><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="password" required>
	        
	    <button type="submit">Login</button>
	  </div>
</form>
</div>
</body>
</html>
