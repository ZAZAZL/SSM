<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
    <h1>修改分类</h1>
    <form action="updateCategory" method="post">
        <input type="hidden" name="id" value="${c.id }" /> 产品名：<input
            type="text" name="name" value="${Category.name}" />
           <input type="submit"
            value="编辑" />
    </form>
</body>
</html>