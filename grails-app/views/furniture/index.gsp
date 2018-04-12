<%--
  Created by IntelliJ IDEA.
  User: maladhikari
  Date: 4/9/18
  Time: 6:16 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Furnicare</title>
    <meta name="layout" content="main"/>
    <r:require modules="bootstrap"/>


</head>

<body>

<table>
    <tr>
        <td>
            <g:link controller="furniture" action="addFurniture">Add Furniture</g:link>
        </td>
    </tr>
</table>

<table border="1">
    <tr>
        <td style="display: none;">id</td>
        <td>Name</td>
        <td>Published Date</td>
        <td>Price</td>
        <td>Edit</td>
        <td>Delete</td>


    </tr>
    <g:each in="${FurnitureList}" var="row">
        <tr>
            <td style="display: none;">row?.id</td>
            <td>${row.name}</td>
            <td>${row.publishedDate}</td>
            <td>${row.price}</td>

                <g:if test="${isAdmin}">
                    <td>
                        <g:link controller="furniture" id="${row.id}" action="editFurniture">Edit</g:link>

                    </td>
                    <td>
                        <g:link controller="Furniture" id="${row.id}" action="delete" params="">delete</g:link>
                    </td>
                </g:if>
               -**---${isAdmin}






        </tr>



    </g:each>
</body>
</html>