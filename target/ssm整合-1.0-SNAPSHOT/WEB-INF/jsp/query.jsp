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
    <title>查询界面</title>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function () {
            deptInfo();
        });
        function deptInfo() {
            $.post("${pageContext.request.contextPath}/dept/query",callback);
        };
        function callback(data) {
            $.each(data,function (i,n) {
                $("tboty").html("");
                $("tbody").append("<tr>").append("<td>"+n.deptno+"</td>")
                    .append("<td>"+n.dname+"</td>").append("<td>"+n.loc+"</td>")
                    .append("</tr>")
            })
        };
    </script>
</head>
<body>
    <center>
        <table>
            <thead><tr><td>部门编号</td><td>部门名称</td><td>部门地点</td></tr></thead>
            <tbody></tbody>
        </table>
    </center>
</body>
</html>
