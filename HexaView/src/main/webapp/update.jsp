<h1>Update Detail</h1>
<%@ page import="com.uc.Dao"%>
<%@page import="com.uc.bean2"%>

<% String sid=request.getParameter("id"); 
System.out.println("id"+sid);
int id=Integer.parseInt(sid);
%>

<% 
bean2 bean2=Dao.getUser(id);
String string=bean2.getGender();
%>
<form action="uProcess.jsp" method="post">
Name:<input type="text" name="name" value=<%= bean2.getName()%>>
<br><br>
Age:<input type="number" name="age" value=<%= bean2.getAge() %>><br><br>


Gender:<input type="radio" name="gender" value="male" ${string eq "male"?'checked="checked"':''}/> <label for="male" >Male</label>
<input type="radio" name="gender" value="female" ${string eq "female"?'checked="checked"':''}/><label for="female">Female</label><br><br>
Mobile:<input type="number" name="mobile" value=<%=bean2.getMobile() %>><br><br>
Email:<input type="email" name="mail" value=<%=bean2.getMail() %>><br><br>
<br><input type="submit" value="Update"><br><br>
</form>
