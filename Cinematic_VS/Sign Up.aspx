<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign Up.aspx.cs" Inherits="Sign_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Document metadata -->
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="CSS/bulma.css" />
    <link rel="stylesheet" type="text/css" href="CSS/font-awesome.min.css" />
    <title>Sign Up</title>
    <style type="text/css">
        .auto-style1 {
            width: 320px;
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation Bar -->
        <nav class="navbar ">
            <div class="navbar-brand">
                <a class="navbar-item" href="index.aspx">
                    <img src="img/logo.png" alt="Cinematic: An experience you will not believe" width="112" height="100">
                </a>

                <a class="navbar-item is-hidden-desktop" href="#" target="_blank">
                    <span class="icon" style="color: #333;">
                        <i class="fa fa-facebook"></i>
                    </span>
                </a>

                <a class="navbar-item is-hidden-desktop" href="https://twitter.com/" target="_blank">
                    <span class="icon" style="color: #55acee;">
                        <i class="fa fa-twitter"></i>
                    </span>
                </a>

                <div class="navbar-burger burger" data-target="navMenuExample">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>

            <div id="navMenuExample" class="navbar-menu">
                <div class="navbar-start">
                    <div class="navbar-item has-dropdown is-hoverable">
                        <a class="navbar-link" href="index.aspx">Home
                        </a>
                        <div class="navbar-dropdown ">
                            <a class="navbar-item " href="#sectionNS">Now Showing
                            </a>
                            <a class="navbar-item " href="#sectionCS">Coming Soon
                            </a>
                        </div>
                    </div>
                    <div class="navbar-item has-dropdown is-hoverable">
                        <a class="navbar-link " href="Movies.aspx">Movies
                        </a>
                        <div class="navbar-dropdown ">
                            <a class="navbar-item " href="#">Showtimes
                            </a>
                            <a class="navbar-item " href="#">Ticketing
                            </a>

                        </div>
                    </div>
                    <div class="navbar-item has-dropdown is-hoverable">
                        <a class="navbar-link " href="About.aspx">About
                        </a>
                        <div id="blogDropdown" class="navbar-dropdown " data-style="width: 18rem;">

                            <a class="navbar-item" href="#">
                                <div class="navbar-content">
                                    <p>
                                        <small class="has-text-info">10 Mar 2017</small>
                                    </p>
                                    <p>Spiderman launches with a bang</p>
                                </div>
                            </a>
                            <a class="navbar-item" href="#">
                                <div class="navbar-content">
                                    <p>
                                        <small class="has-text-info">09 Aug 2017</small>
                                    </p>
                                    <p>Bring your family, friends, loved ones. Get a discounted offer</p>
                                </div>
                            </a>

                        </div>
                    </div>
                    <a class="navbar-item " href="Promotions.aspx">Promotions
                    </a>
                    <a class="navbar-item " href="Contact Us.aspx">Contact Us
                    </a>


                </div>

                <div class="navbar-end">
                    <a class="navbar-item" href="https://facebook.com/" target="_blank">
                        <span class="icon is-medium" style="color: cornflowerblue;">
                            <i class="fa fa-facebook"></i>
                        </span>
                    </a>

                    <a class="navbar-item" href="https://twitter.com/" target="_blank">
                        <span class="icon is-medium" style="color: #55acee;">
                            <i class="fa fa-twitter"></i>
                        </span>
                    </a>

                    <a class="navbar-item" href="https://instagram.com/" target="_blank">
                        <span class="icon is-medium" style="color: fuchsia;">
                            <i class="fa fa-instagram"></i>
                        </span>
                    </a>
                </div>
            </div>
        </nav>


        <!--Sign Up Form-->
        <div class="tabs is-toggle is-centered is-boxed is-medium">
            <ul>
                <li class="is-active">
                    <a>Sign Up</a>
                    <section class="hero is-halfheight is-dark is-bold">
                        <div class="container">
                            <div class="columns is-vcentered">
                                <div class="column is-4 is-offset-4">
                                    <div class="box">
                                        <%-- <%-- Name text box --%>
                                        <label class="label is-medium">Name</label>
                                        <p class="control">

                                            <asp:TextBox ID="nameTextBox" runat="server" placeholder="John Smith" ToolTip="Please enter your name" CssClass="input is-medium"></asp:TextBox>
                                        </p>
                                        <%-- <%-- Username text box --%>
                                        <label class="label is-medium">Username</label>
                                        <p class="control">

                                            <asp:TextBox ID="usernameTextBox" runat="server" placeholder="jsmith" ToolTip="Please enter your username" CssClass="input is-medium"></asp:TextBox>
                                        </p>
                                        <asp:RequiredFieldValidator ID="nameFieldValidator" runat="server" ErrorMessage="Required Field" ControlToValidate="usernameTextBox"></asp:RequiredFieldValidator>
                                        <%-- <%-- UserType text box --%>
                                        <label class="label is-medium">User Type</label>
                                        <p class="control">

                                            <asp:TextBox ID="usertypeTextBox" runat="server" CssClass="input is-medium" Text="User" Enabled="False"></asp:TextBox>
                                        </p>
                                        <asp:RequiredFieldValidator ID="userTypeFieldValidator" runat="server" ErrorMessage="Required Field" ControlToValidate="usertypeTextBox"></asp:RequiredFieldValidator>

                                        <%-- <%-- Email text box --%>
                                        <label class="label is-medium">Email</label>
                                        <p class="control">

                                            <asp:TextBox ID="emailTextBox" runat="server" placeholder="jsmith@example.org" TextMode="Email" CssClass="input is-medium"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="emailFieldValidator" runat="server" ErrorMessage="Required Field" ControlToValidate="emailTextBox"></asp:RequiredFieldValidator>
                                        </p>
                                        <hr>
                                        <%-- <%-- Password text box --%>
                                        <label class="label is-medium">Password</label>
                                        <p class="control">
                                            <%--<asp:TextBox ID="pwdTextBox" runat="server" placeholder="●●●●●●●" TextMode="Password" CssClass="input is-medium"></asp:TextBox>--%>
                                            <input id="Password" type="password" runat="server" placeholder="●●●●●●●" class="auto-style1" />
                                            <asp:RequiredFieldValidator ID="passwordFieldValidator" runat="server" ErrorMessage="Required Field" ControlToValidate="usernameTextBox"></asp:RequiredFieldValidator>
                                        </p>

                                        <%-- <%-- Confirm Password text box --%>
                                        <label class="label is-medium">Confirm Password</label>
                                        <p class="control">

                                            <%--<asp:TextBox ID="confirmPasswordBox" runat="server" placeholder="●●●●●●●" TextMode="Password" CssClass="input is-medium"></asp:TextBox>--%>
                                            <input id="confPassword" type="password" runat="server" class="auto-style1" placeholder="●●●●●●●" />
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not similar" ValueToCompare="Password"></asp:CompareValidator>
                                        </p>
                                        <hr>
                                        <div class="field">
                                            <div class="label">
                                                <label class="button is-link">
                                                    <input type="radio">
                                                    I agree to the terms and conditions
                                                </label>
                                            </div>
                                        </div>

                                        <p class="control">
                                            <asp:Button ID="registerButton" runat="server" Text="Register" CssClass="button is-primary" OnClick="registerButton_Click" />

                                            <asp:Button ID="clearButton" runat="server" Text="Clear" CssClass="button is-link" OnClick="clearButton_Click" />
                                        </p>

                                    </div>
                                    <p class="has-text-centered">
                                        <a href="Contact Us.aspx">Need help?</a>
                                        | 
			  |
			  <a href="index.aspx">Cancel</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </section>
                </li>

            </ul>
        </div>
        <!--Footer-->
        <footer class="footer">
            <div class="container">
                <div class="content has-text-centered">
                    <p>
                        <strong>Created</strong> by 
          <a href="#">TJ &amp; Nurain</a>. Oh what 
          <a href="#">fun</a> you will have. We don&#39;t say it, we 
          <a href="#">guarantee</a> it.
                    </p>

                    <p>
                        &copy; 2017 <strong>Code256</strong>,  Inc.  · <a href="#">Privacy  · </a><a href="#">Terms</a>
                    </p>
                    <a class="icon"><i class="fa fa-heart"></i></a>
                    <p>Last Updated <strong>25th August 2017</strong></p>
                </div>
            </div>
        </footer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:CinematicConnectionString %>" SelectCommand="SELECT [Name], [Username], [UserType], [Email], [Password], [ConfirmPassword] FROM [User_Account]"></asp:SqlDataSource>
    </form>
</body>
</html>
