<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>

   <script src="js/jquery/2.0.0/jquery.min.js"></script>
	<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
	<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>


</head>
<body>
<div class="container">
        <!-- 标题 -->
        <div class="row">
            <div class="col-md-12">
                <h1>产品管理</h1>
            </div>
        </div>
        <!-- 按钮 -->
        <div class="row">
            <div class="col-md-4 col-md-offset-8">
                <a class="btn btn-primary" href="addcategory.jsp">新增</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-hover">
                    <tr>
                        <th>id</th>
                        <th>产品名</th>
                        <th>操作</th>
                    </tr>
                    <c:forEach items="${cs}" var="Category" varStatus="st">
                        <tr>
                        <td>${Category.id}</td>
                        <td>${Category.name} </td>
                            <td>
                                <a type="button"  href="getCategory?id=${Category.id}"  class="btn btn-info btn-sm">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                    编辑</a>
                                <a type="button"  href="deleteCategory?id=${Category.id}"  class="btn btn-danger btn-sm">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true" ></span>
                                    删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>

                    <hr style="height:1px;border:none;border-top:1px solid #ccc;" />
                           <!-- 分页导航栏 -->
                           
                            <!-- 分页信息 -->
        <div class="row">
            <!-- 分页文字信息，其中分页信息都封装在pageInfo中 -->
            <!-- 分页条 -->
            <div class="col-md-6">
                <nav aria-label="Page navigation">
                  <ul class="pagination">
                    <li><a href="?start=0">首页</a></li>
                    <li><a href="?start=${page.start-page.count}">上一页</a></li>
                    <li><a href="?start=${page.start+page.count}">下一页</a></li>  
                    <li><a href="?start=${page.last}">末页</a></li>
                  </ul>
                </nav>
            </div>
        </div>
    </div>
</body>
</html>