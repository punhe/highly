<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.se4f7.prj301.service.ViewService" %>
<%@page import="com.se4f7.prj301.service.impl.ViewServiceImpl" %>
<%@page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
    <head>
        <title>TaskList Home</title>
        <%@include file="./header.jsp" %>
    </head>
    <body>
        <%@include file="./navbar.jsp" %>
        <%
            ViewService viewService = new ViewServiceImpl();
            HttpSession sessions = request.getSession();
            if (sessions.isNew()) {
                viewService.updateView();
            }
            int view = 1;
            view = viewService.count();
        %>

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="#" class="d-block w-100" alt="Image 1">
                </div>
            </div>
        </div>
        <hr/>
        <!-- Feature Cards Section -->
        <div class="container mt-4">
            <div class="card-deck">
                <div class="card">
                    <img src="#" class="card-img-top" alt="Feature 1">
                    <div class="card-body">
                        <h5 class="card-title">Easy Task Management</h5>
                        <p class="card-text">Effortlessly manage your tasks and stay organized with TaskList.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="#" class="card-img-top" alt="Feature 2">
                    <div class="card-body">
                        <h5 class="card-title">Customizable Categories</h5>
                        <p class="card-text">Create and customize categories to organize your tasks the way you want.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="#" class="card-img-top" alt="Feature 3">
                    <div class="card-body">
                        <h5 class="card-title">Reminder Notifications</h5>
                        <p class="card-text">Receive timely reminders to help you stay on top of your tasks.</p>
                    </div>
                </div>
            </div>
        </div>
        <hr/>
        <div class="container mt-4">
            <h3 style="text-align: center">Total number of visitors</h3>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="text-center">
                        <h2 style="font-size: 40px; font-weight: bold; margin-top: 20px;"><%=view%></h2>
                        <p>Thank you for visiting TaskList!</p>
                    </div>
                </div>
            </div>
        </div>
        <hr/>
        <!--contact admin-->
        <div class="container mt-4">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div>
                        <h2>Contact Admin</h2>
                        <form action="./contact">
                            <div class="form-group">
                                <label for="fullName">Full Name:</label>
                                <input placeholder="Input your name" type="text" id="fullName" name="fullName" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input placeholder="Input your email" type="email" id="email" name="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="message">Message:</label>
                                <textarea placeholder="Input your message" id="message" name="message" rows="4" class="form-control" required></textarea>
                            </div>
                            <button type="submit" class="btn btn-outline-success">Send Message</button>
                        </form>
                    </div>
                </div>
                <div class="col-md-6"> <div class="intro-section"> <h2>Introducing Receipt/Payment App</h2>  </div> </div>
            </div>
        </div>
        <hr/>
        <%@include file="./JS.jsp" %>
        <%@include file="./footer.jsp" %>
    </body>
</html>
