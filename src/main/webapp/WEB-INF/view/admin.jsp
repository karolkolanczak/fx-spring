<%@include file="/WEB-INF/view/template/header.jsp"%>
<%--<jsp:include page="/QuotesData" />--%>
<%--<%User user=(User)session.getAttribute("userSessionData");%>--%>

<div class="container">

    <nav class="navbar navbar-default ">
        <%--<div style="position:absolute; top:5px; right:10px" >--%>
            <%--Welcome Admin: '<b><%=user.getLogin()%></b>'</br>--%>
        <%--</div>--%>
        <div style="position:absolute; top:30px; right:10px" >
            <form:form action="LogOut" method="get">
                <button type="submit" class="btn btn-default">log out</button>
            </form:form>
        </div>
        <div style="margin: 20px">
            <h2>ADMINISTRATOR PANEL</h2>
        </div>
    </nav></br>
    <div class="row"></div>

    <div class ="col-lg-offset-0 col-lg-5">
        <form:form class="form-horizontal" action="addPartner" modelAttribute="partner" method="post">
            <div class="form-group">
                <label for="firstName" class="col-sm-3 control-label">First Name</label>
                <div class="col-sm-5">
                    <form:input path="firstName" id="firstName" class="form-control" value="${partner.firstName}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="lastName" class="col-sm-3 control-label">Last Name</label>
                <div class="col-sm-5">
                    <form:input path="lastName" id="lastName" class="form-control" value="${partner.lastName}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="login" class="col-sm-3 control-label">Login</label>
                <div class="col-sm-5">
                    <form:input path="login" id="login" class="form-control" value="${partner.login}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-3 control-label">Password</label>
                <div class="col-sm-5">
                    <form:input path="password" id="password" class="form-control" value="${partner.password}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email</label>
                <div class="col-sm-5">
                    <form:input path="email" id="email" class="form-control" value="${partner.email}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="transactionStrategy" class="col-sm-3 control-label">Transaction Strategy</label>
                <div class="col-sm-5">
                    <form:select path="closedTradesTransactionStrategyNumber" class="form-control" id="transactionStrategy" name="transactionStrategy">
                        <form:option value="1">Strategy 1</form:option>
                        <form:option value="2">Strategy 2</form:option>
                        <form:option value="3">Strategy 3</form:option>
                        <form:option value="4">Strategy 4</form:option>
                        <form:option value="5">Strategy 5</form:option>
                        <form:option value="6">Strategy 6</form:option>
                        <form:option value="7">Strategy 7</form:option>
                        <form:option value="8">Strategy 8</form:option>
                        <form:option value="9">Strategy 9</form:option>
                        <form:option value="10">Strategy 10</form:option>
                    </form:select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-8">
                    <button type="submit" class="btn btn-default">Add new Partner</button>
                </div>
            </div>
        </form:form>
    </div>

    <div class ="col-lg-offset-3 col-lg-2 ">
        <table class="table table-striped col-sm-3 " >
            <tr>
                <th>Symbol</th>
                <th>Bid</th>
                <th>Ask</th>
                <th>Change</th>
                <th></th>
            </tr>
            <c:forEach var="value" items="${listOfQuotes}">
                <tr>
                    <td><c:out value="${value.symbol}" /></td>
                    <c:if test="${value.change >= 0}">
                        <td class="greenColor">
                            <c:out value="${value.bid}" /></td>
                    </c:if>
                    <c:if test="${value.change <= 0}">
                        <td class="redColor"><c:out value="${value.bid}" /></td>
                    </c:if>
                    <c:if test="${value.change >= 0}">
                        <td class="greenColor"><c:out value="${value.ask}" /></td>
                    </c:if>
                    <c:if test="${value.change <= 0}">
                        <td class="redColor"><c:out value="${value.ask}" /></td>
                    </c:if>
                    <c:if test="${value.change >= 0}">
                        <td class="greenColor"><c:out value="${value.change}" /></td>
                    </c:if>
                    <c:if test="${value.change <= 0}">
                        <td class="redColor"><c:out value="${value.change}"/></td>
                    </c:if>
                    <c:if test="${value.change >= 0}">
                        <td>
                            <svg id="icon-up" fill="green" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M4 12l1.41 1.41L11 7.83V20h2V7.83l5.58 5.59L20 12l-8-8-8 8z"/></svg>
                        </td>
                    </c:if>
                    <c:if test="${value.change <= 0}">
                        <td>
                            <svg id="icon-down" fill="red" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M20 12l-1.41-1.41L13 16.17V4h-2v12.17l-5.58-5.59L4 12l8 8 8-8z"/></svg>
                        </td>
                    </c:if>
                </tr>
            </c:forEach>
        </table>
    <h6>*source: <a href="https://www.instaforex.com" target="_blank" >https://www.instaforex.com</a></h6>
    </div>
    <div class="row"></div>

    <hr>

    <h4><b>Table of Partners:</b></h4> </br>
    <div class ="col-sm-6 ">
    <table class="table table-striped col-sm-6 ">
        <tr>
            <th>Partner Id</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Login</th>
            <th>Password</th>
            <th>Email</th>
            <th>Strategy</th>
            <th></th>
            <th></th>
            <th></th>
        </tr>

        <c:forEach var="value" items="${listOfAllPartners}">
        <tr>
            <td><c:out value="${value.partnerId}" /></td>
            <td><c:out value="${value.firstName}" /></td>
            <td><c:out value="${value.lastName}" /></td>
            <td><c:out value="${value.login}" /></td>
            <td><c:out value="${value.password}" /></td>
            <td><c:out value="${value.email}" /></td>
            <td><c:out value="${value.closedTradesTransactionStrategyNumber}" /></td>
            <td><a href="editPartner?parameterPartnerId=<c:out value='${value.partnerId}'/>"> edit </a></td>
            <td><a href="detailsPartner?parameterPartnerId=<c:out value='${value.partnerId}'/>"> details </a></td>
            <td><a href="deletePartner?parameterPartnerId=<c:out value='${value.partnerId}'/>"> <svg id="icon-delete" fill="red" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zm2.46-7.12l1.41-1.41L12 12.59l2.12-2.12 1.41 1.41L13.41 14l2.12 2.12-1.41 1.41L12 15.41l-2.12 2.12-1.41-1.41L10.59 14l-2.13-2.12zM15.5 4l-1-1h-5l-1 1H5v2h14V4z"/><path d="M0 0h24v24H0z" fill="none"/></svg>
            </a></td>
        </tr>
        </c:forEach>

    </table>
    </div>
</br></br>

</div>

<p hidden id="icon-swap"><svg  fill="#000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M16 17.01V10h-2v7.01h-3L15 21l4-3.99h-3zM9 3L5 6.99h3V14h2V6.99h3L9 3z"/><path d="M0 0h24v24H0z" fill="none"/></svg></p>
<p hidden ><svg id="icon-up" fill="green" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M4 12l1.41 1.41L11 7.83V20h2V7.83l5.58 5.59L20 12l-8-8-8 8z"/></svg></p>
<p hidden ><svg id="icon-down" fill="red" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M20 12l-1.41-1.41L13 16.17V4h-2v12.17l-5.58-5.59L4 12l8 8 8-8z"/></svg></p>
<p hidden ><svg id="icon-delete" fill="red" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zm2.46-7.12l1.41-1.41L12 12.59l2.12-2.12 1.41 1.41L13.41 14l2.12 2.12-1.41 1.41L12 15.41l-2.12 2.12-1.41-1.41L10.59 14l-2.13-2.12zM15.5 4l-1-1h-5l-1 1H5v2h14V4z"/><path d="M0 0h24v24H0z" fill="none"/></svg></p>

<%@include file="/WEB-INF/view/template/footer.jsp" %>