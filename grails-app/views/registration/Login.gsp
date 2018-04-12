<%--
  Created by IntelliJ IDEA.
  User: maladhikari
  Date: 1/23/18
  Time: 12:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>


</head>


<body>
<g:form controller="registration" action="save">
    <label>First Name: </label>
    <g:textField name="name" value="${registration?.name}"/><br/>
    <label>Password: </label>
    <g:textField name="Password" value="${registration?.password}"/><br/>
    <g:actionSubmit value="Login"/><br/>

</g:form>


</body>
</html>