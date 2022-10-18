<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp" method="post">
  	<input type="email" name="email" placeholder="Enter the email" required>
    <input type="number" name="mobileNumber" placeholder="Enter the mobile number" required>
    <select name="securityQuestion">
    	<option value="What was your first car?">What was your first car?</option>
     	<option value="What is the name of your first pet?">What is the name of your first pet?</option>
     	<option value="What is your date of birth?">What is your date of birth?</option>
     	<option value="What's your favorite food">What's your favorite food?</option>
    </select>
     <input type="text" name="answer" placeholder="Enter the answer" required>
     <input type="password" name="newPassword" placeholder="Enter your new password to set" required>
      <input type="submit" value="save">
  </form>
      <h2><a href="jsp/login/login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
     String msg=request.getParameter("msg");
      if("done".equals(msg))
    {
  %>	  
      <h1>Password Changed Successfully!</h1>
   <% } %> 
   
   <%
      if("invalid".equals(msg))
    {
  %>	  
      <h1>Some thing Went Wrong! Try Again !</h1>
   <% } %>
  
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>