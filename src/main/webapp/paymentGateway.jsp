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

button {
    background-color:green ;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
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
	<h1>Payment-GateWay</h1>
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
</body>
</html>