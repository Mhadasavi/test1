<%@ page import="com.uc.Dao"%>
<%@ include file="update.jsp" %>
<!--<jsp:useBean id="obj" class="com.uc.bean2"/>
<jsp:setProperty property="*" name="obj"/>
-->
<%System.out.println("in process "+id);
bean2 obj2=Dao.getUser(id);
Dao.update(obj2);
out.println("successfully updated");
%>
<jsp:include page="view.jsp"></jsp:include>  

