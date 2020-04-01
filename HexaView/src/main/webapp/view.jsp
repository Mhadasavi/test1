<%@ page import="com.uc.Dao"%> 
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%> 
<%@ page import="java.util.Iterator"%> 
<%@ page import="com.uc.bean2"%> 

<table  border=1 style="border-collapse: collapse;  width: 100%;"  >
<tr	style="background-color: #4CAF50;
  color: white;">
<td>Id</td>
<td>Name</td>  
<td>Age</td>
<td>Gender</td>
<td>Mail</td>
<td>Mobile</td>
<td colspan="2">Action</td>
</tr>
<%
bean2 bean2=new bean2();
List<bean2> list = new ArrayList<bean2>();
list= Dao.retreive(bean2);
//System.out.println(list);
for(bean2 b:list)
	out.print( "<tr><td>"+b.getId()+"</td><td>"+b.getName()+"</td><td>"+b.getAge()+"</td><td>"+b.getGender()+"</td><td>"+b.getMail()+"</td><td>"+b.getMobile()+"</td><td><a href='update.jsp?id="+b.getId()+"'><button>Update</button></a></td><td><a href='delete.jsp'><button>Delete</button></a></td></tr>");
%>
</table>