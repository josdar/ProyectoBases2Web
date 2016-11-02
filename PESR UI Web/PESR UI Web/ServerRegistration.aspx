﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServerRegistration.aspx.cs" Inherits="PESR_UI_Web.ServerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Server Registration</title>
    <link href="Style/Style.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/css/bootstrap-select.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/js/bootstrap-select.min.js"></script>
    <!-- (Optional) Latest compiled and minified JavaScript translation files -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/js/i18n/defaults-*.min.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Cormorant+Garamond:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href="Style/footer-distributed-with-address-and-phones.css" rel="stylesheet" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,400italic,700' rel='stylesheet' type='text/css'>
</head>
<body>
    <div id="headerFixed">
        <nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="ServerSelection.aspx">PESR</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li><a href="ServerRegistration.aspx">Add new Server</a></li>
                <li><a href="#">Link</a></li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
    </div>

    <div id="centerServerReg">
        <h2 class="sRL">Register a new Server</h2>
        <form>
            
            <div class="form-group" id="nameGroup">
                <label class="lForm" for="serverName">Server Name:</label>
                <input type="text" class="form-control" id="serverName" placeholder="Server Name" />
            </div>
            <div class="form-group" id="ipGroup">
                <label class="lForm" for="ipAddress">Server Address:</label>
                <input type="text" class="form-control" id="ipAddress" placeholder="Server Address" />
            </div>
            <div class="form-group" id="usernameGroup">
                <label class="lForm" for="username">Username:</label>
                <input type="text" class="form-control" id="username" placeholder="Username" />
            </div>
            <div class="form-group" id="groupPassword">
                <label class="lForm" for="password">Password:</label>
                <input type="password" class="form-control" id="password" placeholder="Password"/>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary" id="save">Save</button>
            </div>
        </form>
    </div>

    <footer class="footer-distributed">

            <div class="footer-left">

                <img id="logo" src="http://i.imgur.com/SFCVcBJ.png" alt=""/>

                <p class="footer-links">
                    <a href="#">Home</a>
                    ·
                    <a href="#">Blog</a>
                    ·
                    <a href="#">Pricing</a>
                    ·
                    <a href="#">About</a>
                    ·
                    <a href="#">Faq</a>
                    ·
                    <a href="#">Contact</a>
                </p>

                <p class="footer-company-name">PESR &copy; 2016</p>
            </div>

            <div class="footer-center">

                <div>
                    <i class="fa fa-map-marker"></i>
                    <p><span>Paseo de las Flores</span> Heredia, Costa Rica</p>
                </div>

                <div>
                    <i class="fa fa-phone"></i>
                    <p>+1 555 123456</p>
                </div>

                <div>
                    <i class="fa fa-envelope"></i>
                    <p><a href="mailto:support@PESR.com">support@PESR.com</a></p>
                </div>

            </div>

            <div class="footer-right">

                <p class="footer-company-about">
                    <span>About the company</span>
                    Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
                </p>

                <div class="footer-icons">

                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-github"></i></a>

                </div>

            </div>

        </footer>
</body>
</html>