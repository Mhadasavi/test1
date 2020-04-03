<%@page import="com.uc.Dao"%>
<%@page import="com.uc.MyLogger"%>
<%@page import="java.io.IOException" %>
<%@page import = "java.util.logging.Logger" %>
<%@page import="java.util.logging.Level" %>
<%	Logger logger=Logger.getLogger(this.getClass().getName());%>
<form action="controller.jsp" method="post">  
Name:<input type="text" name="name"><br>  
Password:<input type="password" name="password"><br>  
<input type="submit" value="login">  
</form>
<%logger.log(Level.INFO,"this is info msg"); %>  