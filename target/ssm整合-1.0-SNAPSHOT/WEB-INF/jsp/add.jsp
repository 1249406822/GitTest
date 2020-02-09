<%--
  Created by IntelliJ IDEA.
  User: F117
  Date: 2020/2/5
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加界面</title>
</head>
<body>
    <center>
        <form action="${pageContext.request.contextPath}/dept/add">
            部门编号：<input type="text" name="deptno"/><br>
            部门名称：<input type="text" name="dname"/><br>
            部门地点：<input type="text" name="loc"/><br>
            <input type="submit" value="注册"/>
        </form>
    </center>
</body>
</html>
