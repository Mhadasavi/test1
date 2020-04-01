<jsp:useBean id="obj2" class="com.uc.bean2" />
<%@page import ="com.uc.Dao"%>
<jsp:setProperty property="*" name="obj2"/>
<%
int i=Dao.register(obj2);
if(i<=0)
{
	out.println("failed to regiser");
}
else
	out.print("successfully register");
%>
<jsp:include page="add.jsp"></jsp:include>  
