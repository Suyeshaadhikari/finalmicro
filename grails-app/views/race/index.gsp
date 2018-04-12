
<html>
<head>

    <style>
    body{
        background-color:#b2d1ff;
        padding-top: 10px;
        padding-right: 5px;
        padding-bottom: 10px;
        padding-left: 5px;
        margin-top: 100px;
        margin-bottom: 100px;
        margin-right: 150px;
        margin-left: 80px;
    }
    table,td,th{
        border: 1px solid black;
    }
        table {
            border-collapse: collapse;
            border-spacing: 10px;
            width: 100%;
        }

        th{
            height: 50px;
        }

        table student{
            border-collapse: collapse;
        }
tr:hover {background-color:#FFFF9F;}

container{

}

    </style>



    %{--<asset:javascript src="application.js"/>--}%
    %{--<asset:stylesheet href="application.css"/>--}%

    <script src="/DemoProject/assets/jquery-1.12.4.min.js" type="text/javascript"></script>
    <script src="/DemoProject/assets/fancybox/jquery.fancybox-1.3.4.pack.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/DemoProject/assets/fancybox/jquery.fancybox-1.3.4.css">



    <script >
        $( document ).ready(function() {
            $(".loadFancyBox").fancybox({
                autoDimensions: true,
                onComplete:function () {
                },
                onClosed: function(){

                }
            });


        });




    </script>



</head>

<body>
<div class="container">
    <g:link  controller="login" action="logout">
        <button type="button">Logout</button>


    </g:link>

</div>
<g:link controller="race" action="addDepartment" class="loadFancyBox">
    <button type="button"> Add Department</button>
</g:link>



<table class="department" border="5">
    <tr>
       <td>Department Name</td>
        <td>Department Code</td>
        <td>Action</td>

    </tr>


    <g:each in="${department}" var="row">
        <tr>
            <td>${row.name}</td>
            <td>${row.code}</td>
           <td>
               <g:link controller="race" action="editDepartment" params="[id: row?.id]" class="">edit</g:link>
               <g:link controller="race" action="delete" params="[id:row?.id]">delete</g:link>

           </td>





        </tr>



    </g:each>







</table>






<br>
<br>
<br>
<br>

<g:link controller="race" action="addStudent" class="loadFancyBox">
   <button type="button">Add Student</button>
</g:link>

%{--<div name="editForm" class="editForm" id="editForm">--}%
%{--</div>--}%



<table class="student" border="1">
    <tr>
        <td>S.N</td>
        <td>firstName</td>
        <td>lastName</td>
        <td>Date of Birth</td>
        <td>Department</td>
        <td>Action</td>


    </tr>
    <g:each in="${student}" var="row">
        <tr>
        <td>${row.id}</td>
        <td>${row.firstName}</td>
        <td>${row.lastName}</td>
        <td>${row.dateOfBirth}</td>
            <td>${row.department.name}</td>
            <td>
                <g:link controller="race" action="editStudent" params="[id:row?.id,departmentId:row?.department.id]" class="loadFancyBox">Edit</g:link>
                <g:link controller="race" action="delete" params="[id:row?.id]" >delete</g:link>
             </td>


        </tr>
    </g:each>

</table>
</body>
</html>


