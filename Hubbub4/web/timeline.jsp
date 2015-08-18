<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hubbub 1 -- Timeline</title>
        <style type="text/css">
            .postdiv {border: 1px solid teal; margin: 8px; padding: 8px;}
            .authorspan {margin: 8px; padding: 8px; font-size: larger;}
            .datespan {font-size: smaller;}
            .contentdiv {background-color: lightgray; margin: 8px; padding: 8px;}
            .footer {background-color: #fedcba;}
            .submitclass{alignment-adjust: after-edge;}
            .loggedInUser{font-size: larger;}
            .loginlogoutdiv{margin: 8px; padding: 8px;font-style: italic;font-size: larger}
                       
        </style>
    </head>
    <body>
        <img src="images/hubbub.png"/><br/>
        <h1>Welcome to Hubbub&trade;!</h1>
        <h2>Timeline</h2>
        <c:forEach var="post" items="${posts}">
            <div class="postdiv">
                <span class="authorspan">${post.author}</span>
                <span class="datespan">(user since
                    <fmt:formatDate type="DATE" value="${post.author.joinDate}"/>)
                </span>
                <div class="contentdiv">
                    ${post.content}
                </div>
                <span class="datespan">Posted ${post.postDate}</span>
        </div>
        </c:forEach>
        <c:choose>
        <c:when test="${sessionScope.loginBean!=null}">
        <div class ="postdiv">
        <form action="posts" method="POST">
        <a href="#" class="loggedInUser">${sessionScope.loginBean.username}</a> post something new!<br>
        <textarea name="postArea" rows="5"></textarea>
        <input type="submit" value="Publish to Timeline" class="submitclass">
        </form>
        </div>
        <div class ="loginlogoutdiv">
            <b><a href="posts?logout">Logout</a></b>
        </c:when>    
        <c:otherwise>
        <div class ="loginlogoutdiv">
            <b><a href="login.jsp">Login to Hubbub to post new comments!</a></b><br>
        </div>
        </c:otherwise>
        </c:choose>
        <h3 class="footer">
            Copyright 2015 www.austincc.edu and www.bytecaffeine.com
        </h3>
        </body>
</html>
