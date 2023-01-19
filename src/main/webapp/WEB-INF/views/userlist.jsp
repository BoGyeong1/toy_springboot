<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">

                 <link rel="stylesheet" href="../CSS/all.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
            <title>Hotel</title>
        </head>

        <body>
      <%@ include file = "header.jsp" %>
      <main>
            <div class="container mt-5 pt-5 py-sm-5 py-md-0 px-5 px-lg-5">
               
                            
                        <div class="mt-5 fs-2 text-center">회원 현황</div>
                            <table class="table table-striped text-center mb-5">
                                <thead>
                                    <tr>
                                        <th scope="col">UID</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">First Name</th>
                                        <th scope="col">Last Name</th>
                                        <th scope="col">Title of Honor</th>
                                        <th scope="col">Birthday</th>
                                        <th scope="col">Country</th>
                                        <th scope="col">State</th>
                                        <th scope="col">City</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">Edit</th>
                                        <th scope="col">Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
                                   <tr>
                                   <td>${resultData.USER_ID}</td>
                                   <td>${resultData.EMAIL}</td>
                                   <td>${resultData.FRIST_NAME}</td>
                                   <td>${resultData.LAST_NAME}</td>
                                   <td>${resultData.TITLE_OF_HONOR}</td>
                                   <td><fmt:formatDate value="${resultData.BIRTHDAY}" pattern="yyyy-MM-dd"/></td>
                                   <td>${resultData.COUNTRY}</td>
                                   <td>${resultData.STATE}</td>
                                   <td>${resultData.CITY}</td>
                                   <td>${resultData.ADDRESS}</td>
                                   <td><form action="/edit/${resultData.USER_ID}"><button class="btn btn-primary" >Edit</button></form></td>
                                   <td><form action="/delete/${resultData.USER_ID}" method="post"><button class="btn btn-primary">Delete</button></form></td>
                                   </tr>
                                   </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        </main>

                            <%@ include file = "footer.jsp" %>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                crossorigin="anonymous"></script>
        </body>

        </html>