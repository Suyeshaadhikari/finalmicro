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
    %{--<r:require modules="bootstrap"/>--}%
</head>

<body>
<g:form name="addForm" controller="furniture" action="save">
<table>
    <tr>
        <td>Furniture Name</td>
        <td><input type="text" name="name"/></td>
    </tr>
    <tr>
        <td>Published Date</td>
        <td><input type="text" name="publishDate"/></td>
    </tr>
    <tr>
        <td>Price</td>
        <td><input type="text" name="Price"/></td>
    </tr>
    <tr>
        <td>Description</td>
        <td><textarea name="description"></textarea></td>
    </tr>


        <td>Owner's Name</td>
        <td><textarea name="ownersName"></textarea></td>

    </tr>
    <tr>
        <tr>
        <td>Phone No</td>
        <td><textarea name="phoneNo"></textarea></td>
</tr>
<tr>
        <td>Image</td>
        <td><input type="file" name="image"/> </td>
    </tr>

    </tr>
    <tr>
        <td>Condition</td>
    <td>
    Old<br>
  <input type="radio" name="condition" value="old">
  </td>
  <td>
    New<br>
  <input type="radio" name="condition" value="new">
  </td>
  </tr>

        <td>
            <input type="submit">
        </td>
    <tr>
</table>
</g:form>
</body>
</html>