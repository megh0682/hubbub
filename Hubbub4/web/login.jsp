<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="$(loginBean!=null}"><c:redirect url ="signin"/></c:if>
<html>
<head><title>Sign In</title>
<style type ="text/css">#flash{color:red;}</style>
</head>
<body>
<img src="images/hubbub.png"/><br/>
<center>
<h1>Hubbub&trade; User Account Login!</h1>
<h2 id = "flash">${flash}</h2>  
<div>
<form method="POST" action="posts"> 
<table border="1">
    <h2><tr><td>Username:</td><td><input type="text" name="user" required/></td></tr></h2>
    <h2><tr><td>Password:</td><td><input type="password" name="pass" required/></td></tr></h2>
    <h2><tr><td colspan="2"><input type="submit" value="Log me in !"/></td></tr></h2>
</table>
</form>
</div>
</center>       
</body>
</html>

