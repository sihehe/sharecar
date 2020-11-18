<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: SAND
  Date: 2020/11/10
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    ${productList[0].name}
</div>

<c:forEach items="${productList}" var="product">
    ${product.name}<br/>
</c:forEach>

</body>
</html>
