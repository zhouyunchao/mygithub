<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询学生信息</title>
</head>
<body>
<table border="1" width="20%">
<tr><td>学号</td><td>姓名</td><td>年龄</td></tr>
<c:forEach items="${list }" var="stu">
  <tr><td>${stu.xh }</td><td>${stu.name }</td><td>${stu.age }</td></tr>
</c:forEach>
</table>
</body>
</html>