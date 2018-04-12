<%--
  Created by IntelliJ IDEA.
  User: maladhikari
  Date: 1/31/18
  Time: 10:41 AM
--%>

<%@ page import="demoproject.Department" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Department</title>

    <style>
    div{
        border: 1px solid black;
        background-color:#999999;
        padding-top: 50px;
        padding-right: 30px;
        padding-bottom: 50px;
        padding-left: 30px;


    }


    </style>
</head>


<body>
<g:form controller="race" action="saveDepartment" params="[departmentId: params.id]" >

    <table>
        <tr>
            <td>

                <label>Department Name: </label>
            </td>
            <td>
                <g:textField name="departmentName" value="${department?.name}"/>

            </td>
        </tr>
        <tr>
            <td>
                <label>Department Code: </label>
            </td>
            <td>

                <g:textField name="departmentCode" value="${department?.code}"/>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="save">

            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="cancel">

            </td>

        </tr>



    </table>
</g:form>
    </body>
    </html>