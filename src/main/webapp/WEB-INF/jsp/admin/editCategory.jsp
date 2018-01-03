<%--
  Created by IntelliJ IDEA.
  User: stl
  Date: 2018/1/3
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>
<html>
<head>
    <title>编辑分类</title>
    <script>
        $(function () {
            $("#editForm").submit(function(){
                if(!checkEmpty("name","分类名称"))
                    return false;
                return true;
            })
        })
    </script>
</head>
<body>
    <div class="workingArea">
        <ol class="breadcrumb">
            <li><a href="admin_category_list">所有分类</a> </li>
            <li class="active">编辑分类</li>
        </ol>
    </div>

    <div class="panel panel-warning editDiv">
        <div class="panel-heading">编辑分类</div>
        <div class="panel-body">
            <form method="post" id="editForm" action="admin_category_update" enctype="multipart/form-data">
                <table class="editTable">
                    <tr>
                        <td>分类名称</td>
                        <td><input id="name" name="name" value="${c.name}" type="text" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>分类照片</td>
                        <td>
                            <input id="categoryPic" accept="image/*" type="file" name="image">
                        </td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <input type="hidden" name="id" value="${c.id}">
                            <button type="submit" class="btn btn-success">提 交</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
