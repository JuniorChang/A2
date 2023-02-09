<%--
  Created by IntelliJ IDEA.
  User: chang
  Date: 9/2/2023
  Time: 10:41 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>
<div style="text-align: center; margin-top: 5%;">
    <%
        out.println(
                "<h1> Log In Successful </h1>" +
                "<h4 style='margin-top:50px;'> Welcome back "+session.getAttribute("role") +"</h4>") ;
    %>
</div>


<div style="text-align: center; margin-top: 5%; outline: 2px solid black; width: 50%; margin-left: auto; margin-right: auto;">
<%


    if (session != null && session.getAttribute("role") == null) {
        response.sendRedirect("index.jsp");
    }
    else {
        if(session.getAttribute("role").equals("admin")){
            out.println("<div style='display:flex; flex-direction:column  '>") ;

            out.println("<div>") ;
            out.println("Data that only admin can view") ;
            out.println("</div>") ;

            out.println("<div>") ;
            out.println("<a href=\"restrictedPage.jsp\">Restricted Page</a>");
            out.println("</div>") ;

            out.println("</div>") ;
        }
        else if(session.getAttribute("role").equals("user")){
            out.println("Data that only user can view");
        }
    }



%>
</div>

    <div style="text-align: center; margin-top: 5%; outline: 2px solid black; width: 50%; margin-left: auto; margin-right: auto;">
        <p> Generic data that all roles can view</p>
    </div>

    <div>
        <a class="btn btn-danger" role="button" href="LogoutServlet" style="margin-left: 50%; margin-top: 5%;">Log Out</a>
    </div>



<div style="position: fixed; left: 0; bottom: 0; width: 100%; background-color: black; color: white">
    <p style="text-align: center; margin-top: 1rem; margin-bottom: 1rem;">&copy; Demo for Log in Done by Chang Jia Le</p>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</body>
</html>
