<%--
  Created by IntelliJ IDEA.
  User: maladhikari
  Date: 4/9/18
  Time: 6:16 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Furniture</title>
    <meta name="layout" content="main"/>
    <r:require modules="bootstrap"/>
</head>

<body>
<g:form name="addForm" controller="furniture" action="update">
    <g:hiddenField name="id" value="${f.id}"></g:hiddenField>
    <table>
        <tr>
            <td>Furniture Name</td>
            <td><input type="text" name="name" value="${f.name}" /></td>
        </tr>
        <tr>
            <td>Published Date</td>
            <td><input type="text" name="publishDate" value="${f.publishedDate}"/></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="text" name="Price" value="${f.price}"/></td>
        </tr>
        <tr>
            <td>Description</td>
            <td><textarea name="description" value="${f.details}"></textarea></td>
        </tr>


        <tr>
            <td>
                <input type="submit" value="update" />
            </td>
        </tr>
    </table>
</g:form>
</body>
</html>