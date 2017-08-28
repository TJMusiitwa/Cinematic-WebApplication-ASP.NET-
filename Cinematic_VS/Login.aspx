<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Document metadata -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="CSS/bulma.css" />
    <script src="https://use.fontawesome.com/9fc9211da7.js"></script>
    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            max-width: 1344px;
            width: 1344px;
            left: 0px;
            top: 0px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation Bar -->
        <nav class="navbar ">
            <div class="navbar-brand">
                <a class="navbar-item" href="index.aspx">
                    <img src="img/logo.png" alt="Cinematic: An experience you will not believe" width="112" height="28">
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
                        <a class="navbar-link is-active" href="index.aspx">Home
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
        <!--Login-->
        <div class="tabs is-toggle is-centered is-boxed is-medium">
            <ul>
                <li class="is-active">
                    <a>Login</a>
                    <section class="hero is-halfheight is-light is-bold">
                        <div class="container">
                            <div class="columns is-vcentered">
                                <div class="column is-4 is-offset-4">
                                    <div class="box">

                                        <span class="icon is-medium">
                                            <i class="fa fa-user"></i>
                                        </span>
                                        <label class="label is-medium">Username</label>
                                        <p class="control">

                                            <%-- Asp text box --%>
                                            <asp:TextBox ID="usernameTextBox" runat="server" placeholder="jsmith" ToolTip="Please enter your username" CssClass="input is-medium"></asp:TextBox>

                                        </p>
                                        <hr>
                                        <span class="icon is-medium">
                                            <i class="fa fa-lock"></i>
                                        </span>
                                        <label class="label is-medium">Password</label>
                                        <p class="control">


                                            <%-- ASp text box --%>
                                            <asp:TextBox ID="pwdTextBox" runat="server" placeholder="●●●●●●●" TextMode="Password" CssClass="input is-medium"></asp:TextBox>

                                        </p>
                                        <hr>
                                    </div>
                                    <p class="has-text-centered">
                                        <asp:Button ID="loginButton" runat="server" Text="Login" CssClass="button is-primary is-large" OnClick="loginButton_Click" Style="left: -30px; top: -6px; width: 96px; height: 2.6em" />

                                        <asp:Button ID="cancelButton" runat="server" Text="Cancel" CssClass="button is-primary is-large" OnClick="cancelButton_Click" Style="right: -30px; top: -6px; width: 96px; height: 2.6em" />

                                        <div class="label">
                                            Don't have an account, create one for free
                                            </div><div>
                                            <asp:Button ID="signUPButton" runat="server" Text="Sign Up" CssClass="button is-dark is-link" OnClick="signUPButton_Click" style="left: 157px; top: -2px"/>
                                        </div>
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
            <div class="auto-style1">
                <div class="content has-text-centered">
                    <p>
                        <strong>Created</strong> by 
          <a href="#">TJ &amp; Nurain</a>. Oh what 
          <a href="#">fun</a> you will have. We don&#39;t say it, we 
          <a href="#">guarantee</a> it.
                    </p>
                    <p>
                        <p>
                            &copy; 2017 <strong>Code256</strong>, Inc.  · <a href="#">Privacy  · </a><a href="#">Terms</a>
                        </p>
                        <a class="icon"><i class="fa fa-heart"></i></a>
                    </p>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
