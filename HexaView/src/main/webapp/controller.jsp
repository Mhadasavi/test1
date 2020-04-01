<jsp:useBean id="obj" class="com.uc.Bean" scope="application"/>  
<jsp:setProperty property="*" name="obj"/>

<% request.setAttribute("obj",obj); %>

<%!
public boolean validate(HttpServletRequest req){
	if(req.getParameter("name").equals("admin")){
		return true;
	}else return false;
}
%>
<% if(validate(request)){
	request.getRequestDispatcher("success.jsp").forward(request,response);}
else request.getRequestDispatcher("fail.jsp").forward(request,response);

%>