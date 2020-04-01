<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.uc.Bean" %>
<% 
Bean bean=(Bean)request.getAttribute("obj");
out.println("welcome "+bean.getName());%>
<br>
<H1>Add new User</H1>
<a href="index.jsp"><button>Home</button></a>
<a href="add.jsp"><button>Add</button></a>
<a href="view.jsp"><button>View</button></a>
