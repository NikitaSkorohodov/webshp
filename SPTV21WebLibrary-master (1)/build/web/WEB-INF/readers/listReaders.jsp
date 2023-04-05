<%-- 
    Document   : listBooks
    Created on : Feb 28, 2023, 11:10:00 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <h3 class="w-100 d-flex justify-content-center mt-5">Список клиентов</h3>
   <div class="w-100 p-3 d-flex justify-content-center">
        <div class="card m-2 border-0" style="width: 45rem;">
            <div class="card-body">
                <div class="container text-center">
                    <table class="table">
                    <thead>
                    <tr><th scope="col">№</th><th scope="col">Клиенты</th><th scope="col">Покупки</th></tr>
                    </thead>
                    <c:forEach var="entry" items="${mapReaders}" varStatus="status">
                         <tr>
                             <td>${status.index+1}</td>
                             <td class="d-flex justify-content-start">|${entry.key.firstname}    ${entry.key.lastname}|     ${entry.key.phone}|     ${entry.key.mony}$|</td>
                             <td></td>
                         </tr>
                         <c:forEach var="book" items="${entry.value}" varStatus="status">
                            <tr>
                                <td></td>
                                <td></td>
                                <td class="d-flex justify-content-start"><a class="text-decoration-none" href="book?id=${book.id}">${status.index + 1}. ${book.bookName}</a></td>
                            </tr>
                         </c:forEach>

                    </c:forEach>
                </table>
                </div>
            </div>
         </div>
   </div>
