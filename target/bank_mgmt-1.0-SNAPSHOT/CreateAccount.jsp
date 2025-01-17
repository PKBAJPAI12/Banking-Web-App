<%--
  Created by IntelliJ IDEA.
  User: shubh
  Date: 13-05-2022
  Time: 11:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <%@include file="/common_css_js.jsp"%>
    <script src="js/script.js"></script>
</head>
<body class="back">
<%@include file="navbar.jsp"%>
<div class="container-fluid">
    <div class="row mt-5">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body px-5">
                    <h4 class="text-center my-3">Create Account</h4>
                    <form action="CreateAccount" method="post">

                        <div>
                            <label>Email</label>
                            <input name="email" required type="email" class="form-control" id="email" placeholder="Enter Email Address" aria-describedby="emailHelp"><br>
                        </div>

                        <div>
                            <label>Password</label>
                            <input name="password" required type="password" class="form-control" id="password" placeholder="Enter Password"><br>
                            <input name="confirm password" required type="password" class="form-control" id="confirm password" placeholder="Confirm Password"><br>
                        </div>

                        <div class="form-group">
                            <label for="firstname">User Name</label>
                            <input name="first_name" required type="text" style="border:1px solid #72d3f1;" class="form-control" id="firstname" placeholder="Enter your name here" aria-describedby="emailHelp"><br>
                            <input name="last_name" required type="text" style="border:1px solid #72d3f1;" required type="text" class="form-control" id="lastname" placeholder="Enter your last name here">
                        </div>

                        <div class="form-group">
                            <label for="fathername">Fathers Name</label>
                            <input name="fathers_name" required type="text" style="border:1px solid #72d3f1;" class="form-control" id="fathername" placeholder="Enter your name here" aria-describedby="emailHelp" >
                        </div>

                        <div class="form-group">
                            <label for="dob">D.O.B</label>
                            <input name="dob" required type="date" class="form-control" id="dob" placeholder="Enter your name here" aria-describedby="emailHelp">
                        </div>

                        <div class="form-group">
                            <label for="gender">Gender</label>
                            <select name="gender" id="gender" required class="form-control">
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Others">Others</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="address">Permanent Address</label>
                            <textarea name="user_address" placeholder="Enter your Permanent Address" class="form-control" id="address">
                           </textarea>
                        </div>

                        <div class="form-group">
                            <input name="yes" required type="checkbox" id="yes" onclick="setPresentAddress();"><label>Same as above</label>
                        </div>

                        <div class="form-group">
                            <label>Present Address</label>
                            <textarea name="present_address" placeholder="Enter your Present Address"  class="form-control" id="present address">
                           </textarea>
                        </div>

                        <div class="form-group">
                            <label for="panno" >PAN Number</label>
                            <input name="pan_number" required type="number" class="form-control" id="panno" placeholder="Pan Number" aria-describedby="emailHelp" >
                        </div>

                        <div class="form-group">
                            <label for="phone" >User Phone</label>
                            <input name="user_phone" required type="number" class="form-control" id="phone" placeholder="Enter your phone" aria-describedby="emailHelp" >
                        </div>

                        <div class="form-group">
                            <label>Type of Account &nbsp</label>
                            <select name="account_type" id="account_type" required class="form-control">
                                <option value="saving">Saving</option>
                                <option value="current">Current</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Opening Balance</label>
                            <input name="opening_balance" class="form-control" required type="number" min="5000" id="balance" placeholder="Enter Amount">
                            <small id="emailHelp" style="color:white" class="form-text">Minimum opening amount should be 5000.</small>
                        </div>
                        <a href="login.jsp" class="text-center d-block mb-2">If Already have an Click Here</a>
                        <div class="container text-center">
                            <button id="register" onclick="verifyPassword();">Register</button>
                            <button type="reset" id="reset">Reset</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
