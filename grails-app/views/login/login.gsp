<%--
  Created by IntelliJ IDEA.
  User: maladhikari
  Date: 1/24/18
  Time: 12:08 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <script src="/DemoProject/assets/jquery-1.12.4.min.js" type="text/javascript"></script>
    <script src="/DemoProject/assets/fancybox/jquery.fancybox-1.3.4.pack.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/DemoProject/assets/fancybox/jquery.fancybox-1.3.4.css">


    <style type="text/css">
    body{
        background-color: #ac5353 ;
        border-radius: 25px;
        padding: 20px;
        width: 200px;
        height: 150px;

    }
    header{
        margin: 5px;
        border: 10px;
        height: auto;
        width: 100%;
    }

    </style>

</head>

<body>
<script>

    $(document).ready(function() {
        $( "#username" ).val("USERNAME");
        $("#password").val("PASSWORD");

        alert("WELCOME!");






    });

    //        $(".add").fancybox({
    //            autoDimensions: true,
    //            onComplete:function () {
    //            },
    //            onClosed: function(){
    //
    //            }
    //        });
    //
    //
    //    });


    function validate() {
        console.log("in validate");
        var username = $('#username').val();
        var password = $('#password').val();
        console.log("uer-----"+username)
        console.log("pass-----"+password)
//        alert(1);
        $.ajax({
            url:'${createLink(controller: 'login',action: 'checkPassword')}',
            type: "POST",
            async:false,
            data:{"username":username,"password":password},
            success: function (data) {
                console.log("data----"+data);
               if (data!="NoRecord"){
                   alert(data);
                   $('.isAdmin').val(data)
                   $('.tttte').submit();

               }
               else{
                   alert("Wrong password");
                   return false;

               }
            }

        });
//        alert(2);
    }

</script>
%{--<div id="demo">--}%
%{--<h2>Change malika</h2>--}%
%{--<button type="button" onclick="login()">Change asdsadsamalika</button>--}%

%{--</div>--}%
<div id="header">

    %{--<img src="/home/maladhikari/IdeaProjects/DemoProject/grails-app/assets/images/images.jpeg"  style="width:100px">--}%
    %{--<img src="${resource(dir:'images/',file: 'images.jpeg',field:'image')}"  style="width:300px">--}%


    %{--<div class="err" id="add_err"></div>--}%

    <g:form class="tttte" controller="login" action="login" method="POST">
        <label><b>Username</b></label><br>
        <g:textField name="username" id ="username"  onfocus="(this.value == 'USERNAME') && (this.value = '')"
                     onblur="(this.value == '') && (this.value = 'USERNAME')"/><br/>
        <label>Password: </label>
        <input type="password" id="password" name="password" type="password"  onfocus="(this.value == 'P') && (this.value = '')"
               onblur="(this.value == '') && (this.value = 'PASSWORD')"/><br/>
        <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
        </g:if>
        <input type="button" value="Login" id="enter" onclick="return validate();"/><br/>
        <input type="hidden" name="isAdmin" class="isAdmin" value=""/>

    </g:form>

%{--<g:if test="${flash.message}">--}%
%{--<div class="message">${flash.message} style="display:">${flash.message}</div>--}%
%{--</g:if>--}%





</body>
</html>