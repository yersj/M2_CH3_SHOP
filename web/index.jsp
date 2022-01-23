<%@ page import="model.Items" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 21.01.2022
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BITLAB</title>
</head>
<body>
     <%@include file="nav.jsp"%>
     <div class="container">
         <div class="row ">
             <div class="col-lg-12 text-center">
                 <h1>Welcome to BITLAB SHOP</h1>
             </div>


         </div>
         <div class="row ">
             <div class="text-center">
                 <p>Electronic devices with high quality and service</p>
             </div>


         </div>
         <div class="row d-flex justify-content-around">
             <%
                 List<Items> itemsList=(List<Items>) request.getAttribute("allItems");
                 for (Items item:itemsList){
             %>
             <div class="col-lg-3">
                 <div class="card" style="width: 18rem;">
                     <div class="card-body">
                         <h3 class="card-title bg-light"><%=item.getName()%></h3>
                         <h5 class="card-title text-success"><%=item.getPrice()%>$</h5>
                         <p class="card-text"><%=item.getDescription()%></p>
                         <a href="#" class="btn btn-success ms-5">Buy now</a>
                     </div>
                 </div>
             </div>
           <%
               }
           %>
         </div>
     </div>
</body>
</html>
