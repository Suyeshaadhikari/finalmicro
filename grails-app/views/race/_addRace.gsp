<html>
<head>
    <script src="/DemoProject/assets/jquery-1.12.4.min.js" type="text/javascript"></script>
    <script src="/DemoProject/assets/fancybox/jquery.fancybox-1.3.4.pack.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/DemoProject/assets/fancybox/jquery.fancybox-1.3.4.css">

<script>

    $( document ).ready(function() {
        console.log("here--------- ${params}")
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

</script>


    <style>
    div{
        margin: 10px;
        background-color:#999999;;
        padding-top: 10px;
        padding-right: 5px;
        padding-bottom: 10px;

    }


    </style>
</head>



<body>
<g:form controller="race" action="save" params="[studentId: student?.id,departmentId:params.departmentId]" >

    <table>



            %{--<td>--}%
                %{--<g:hiddenField name="studentId" value="${student?.id}"></g:hiddenField>--}%

            %{--</td>--}%
    <tr>
            <td>

                <label>First Name: </label>
                </td>

    <td>
    <g:textField name="firstName" value="${student?.firstName}"/>




    </td>
</tr>

    <tr>

            <td>
                <label>Last name: </label>


            </td>

        <td>
            <g:textField name="lastName" value="${student?.lastName}"/>

        </td>


    </tr>


        <tr>
            <td>
                <label>Date of Birth: </label>

            </td>
            <td>
                <g:textField name="dateOfBirth" value="${student?.dateOfBirth}"/>

            </td>

        </tr>
        <tr>
            <td>
                <label>Department Name:</label>

            </td>
            <td>
                <g:select name="department" from="${allDepartment}" value="${student?.department?.code}"  noSelection="[Select:'Select']"/>


            </td>
        </tr>
        <tr>
            <td>
                %{--<g:actionSubmit value="Save" action="saveStudent" />--}%
                <input type="submit" value="save">
            </td>
        </tr>
        <tr>
            <td>
              <input type="submit" value="canc
              el">

            </td>
        </tr>

    </table>
</g:form>

</body>
</html>


