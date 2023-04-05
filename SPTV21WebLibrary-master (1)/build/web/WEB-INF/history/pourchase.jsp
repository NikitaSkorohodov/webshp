<%-- 
    Document   : pourchase
    Created on : Apr 5, 2023, 11:01:28 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <h3 class="w-100 d-flex justify-content-center mt-5">Список авторов</h3>
   <div class="w-100 p-3 d-flex justify-content-center">
        <div class="card m-2 border-0" style="width: 43rem;">
            <div class="card-body">
                <table class="table">
                    <thead>
                    <tr><th scope="col">№</th><th scope="col">Фирма</th><th scope="col">Обувь фирм</th></tr>
                    </thead>
                    <c:forEach var="author" items="${listAuthors}" varStatus="status">
                         <tr>
                             <td>${status.index+1}</td>
                             <td class="d-flex justify-content-start">${history.porchase}</td>
                             <td></td>
                         </tr>
                         

                    </c:forEach>
                </table>
            </div>
         </div>
   </div>