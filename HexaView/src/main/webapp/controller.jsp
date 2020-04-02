<jsp:useBean id="obj" class="com.uc.Bean" scope="application"/>  
<%@page import ="org.apache.logging.log4j.LogManager"%>
<%@page import="org.apache.logging.log4j.Logger" %>
<jsp:setProperty property="*" name="obj"/>
<% request.setAttribute("obj",obj); %>

<%!
public boolean validate(HttpServletRequest req){
	if(req.getParameter("name").equals("admin")){
		return true;
	}else return false;
}
%>
<%! final  Logger logger=LogManager.getLogger("controller_jsp"); %>
<%logger.info("this is info message");
	logger.error("this is error message");
	logger.warn("this is warn message");
	logger.fatal("this is fatal message");
	out.println("completed");
%>
<% if(validate(request)){
	request.getRequestDispatcher("success.jsp").forward(request,response);}
else request.getRequestDispatcher("fail.jsp").forward(request,response);

%>