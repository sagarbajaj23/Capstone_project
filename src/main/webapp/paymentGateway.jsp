<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment-Gateway</title>
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
    background-color:#008080;
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

#banner {
position: relative;
width: 1180px;
height: 300px;
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
		<h1>Payment-GateWay</h1>
	</div>
</div>
	<form action="Payment" method="post">
	  <div class="container" >
	    <label><b>CustomerID</b></label>
	    <input type="text" placeholder="Enter CustomerID" name="custId" required>
	
	    <label><b>Enter Card number</b></label>
	    <input type="text" placeholder="Enter Card number" name="cardNo" required>
	    
	    
	    <label><b>Enter Amount</b></label>
	    <input type="text" placeholder="Enter Amount" name="amount" required>      
	    <button type="submit">Confirm Payment</button>
	  </div>
</form>
</div>
</body>
</html>