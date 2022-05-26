<%@ page import="com.project.dao.UserDao" %>
<%@ page import="com.project.entities.RDAccount" %>
<%@ page import="com.project.helper.FactoryProvider" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PayRD</title>
    <%@include file="/common_css_js.jsp"%>
</head>
<body class="back">
<%@include file="navbar.jsp"%>
<%
    Users user = (Users) session.getAttribute("current-User");

    if(user==null){
%>
<div class="card1">
    <h2>You need to Sign in</h2>
    <a href="login.jsp">Click Here</a>
</div>
<%
}
else
{
    UserDao userDao = new UserDao(FactoryProvider.getFactory());
    RDAccount rdAccount = userDao.getRDAccountByUserId(user.getUserId());
    if(rdAccount==null){
%>
<div class="card1">
    <h2>You need to create an RD Account</h2>
    <a href="rdaccount.jsp">Click Here</a>
</div>
<%
    }
    else{

%>
<div class="container-fluid">
    <div class="row al">
        <div class="col-md-4">
            <div class="card mt-3">
                <div class="card-header custom-bg">
                    <h3>Pay RD Monthly Deposit</h3>
                </div>
                <div class="card-body">
                    <%@include file="message.jsp"%>
                    <form action="PayRDServlet" method="post">
                        <div class="form-group">
                            <%--@declare id="exampleinputemail1"--%><label for="exampleInputEmail1">Your Account Number is: <%=user.getAccountNo()%></label>
                        </div>
                        <div class="form-group">
                            <%--@declare id="exampleinputpassword1"--%><label for="exampleInputPassword1">In Your RD the Deposited Amount is: <%=rdAccount.getDepositAmount()%></label>
<%--                            <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                        </div>
                        <div class="form-group">
                            <%--@declare id="exampleinputpassword1"--%><label for="exampleInputPassword1">In Your Rd the Monthly deposit is: <%=rdAccount.getMonthlyDeposit()%></label>
<%--                            <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                        </div>
                        <div class="container text-center">
                            <button type="submit" id="register">Click to Pay RD</button>
                            <button type="reset" id="reset">Reset</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%
    }
    }
%>
</body>
</html>
