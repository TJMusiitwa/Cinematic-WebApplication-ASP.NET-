<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="Contact_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Document metadata -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="CSS/bulma.css">
    <link rel="stylesheet" type="text/css" href="CSS/font-awesome.min.css">
    <script src="JS/bulma.js"></script>
    <script src="https://use.fontawesome.com/9fc9211da7.js"></script>

    <title>Contact</title>
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
                    <a class="navbar-item" href="Promotions.aspx">Promotions
                    </a>
                    <a class="navbar-item is-active" href="Contact Us.aspx">Contact Us
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
                    <div class="navbar-item">
                        <div class="field is-grouped">
                            <p class="control">
                                <a class="button is-info" href="Login.aspx">
                                    <span>Login</span>
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="navbar-item">
                        <div class="field is-grouped">
                            <p class="control">
                                <a class="button is-info has-icons-right" href="Sign Up.aspx">

                                    <span>Sign Up</span>
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <!--Contact Form-->
        <section class="hero is-info is-bold">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title is-1">Reach out to us
                    </h1>
                    <hr>
                    <h2 class="subtitle">For all your queries,feedback & help...
                    </h2>
                </div>
            </div>
        </section>
        <!--Submit Form-->

        <div class="container">
            <div class="field">
                <label class="label">Name</label>
                <div class="control">

                    <asp:TextBox ID="nameTxtBox" runat="server" placeholder="Text input" CssClass="input" required=""></asp:TextBox>

                </div>
            </div>

            <div class="field">
                <label class="label">Username</label>
                <div class="control has-icons-left has-icons-right">
                    <asp:TextBox ID="userTxtBox" runat="server" placeholder="Text input" CssClass="input" type="Text"></asp:TextBox>
                    <span class="icon is-small is-left">
                        <i class="fa fa-user"></i>
                    </span>
                    <span class="icon is-small is-right">
                        <i class="fa fa-check"></i>
                    </span>
                </div>
            </div>

            <div class="field">
                <label class="label">Email</label>
                <div class="control has-icons-left has-icons-right">
                    <asp:TextBox ID="emailTxtBox" runat="server" placeholder="Email input" CssClass="input" required="" TextMode="Email"></asp:TextBox>
                    <span class="icon is-small is-left">
                        <i class="fa fa-envelope"></i>
                    </span>
                    <span class="icon is-small is-right">
                        <i class="fa fa-warning"></i>
                    </span>


                </div>
            </div>



            <div class="field">
                <label class="label">Message</label>
                <div class="control">

                    <asp:TextBox ID="msgBox" runat="server" TextMode="MultiLine" CssClass="textarea" placeholder="Text Area"></asp:TextBox>
                </div>
            </div>

            <div class="field">
                <div class="control">
                    <label class="checkbox">
                        <input type="checkbox">
                        I agree to the <a href="#">terms and conditions</a>
                    </label>
                </div>
            </div>

            <div class="field is-grouped">
                <div class="control">

                    <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="button is-primary" OnClick="submitButton_Click" />
                </div>
                <div class="control">

                    <asp:Button ID="cancelButton" runat="server" Text="Cancel" CssClass="button is-link" href="index.aspx" />
                </div>
            </div>
        </div>
        <!--Map Area-->
        <section class="section">
            <div class="container">
                <h1 class="title">Find us
                </h1>
                <hr>
                <div class="columns">
                    <div class="column">
                        <!--Map 1-->
                        <iframe width="550" height="450" frameborder="0" style="border: 0"
                            src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ4VFG2tY3zDERvKDnIyVU3Cg&key=AIzaSyBpxjv7UQ-0SLzt3JXVmfsI3gy5qPiq4e4" allowfullscreen></iframe>
                    </div>
                    <!--Map 2-->
                    <div class="column">
                        <iframe width="550" height="450" frameborder="0" style="border: 0"
                            src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJwYo9AhQ2zDERokwJnyvbwhY&key=AIzaSyBpxjv7UQ-0SLzt3JXVmfsI3gy5qPiq4e4" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </section>
        <!--Footer-->
        <footer class="footer">
            <div class="container">
                <div class="content has-text-centered">
                    <p>
                        <strong>Created</strong> by <a href="index.html">TJ & Nurain</a>. Oh what
        <a href="#">fun </a>you will have. We don't say it, we <a href="#">guarantee </a>it.
                    </p>
                    <p>
                        <p>
                            &copy; 2017 <strong>Code256</strong>, Inc.  · <a href="#">Privacy  · </a><a href="#">Terms</a>
                        </p>
                        <a class="icon"><i class="fa fa-heart"></i></a>
                    </p>
                    <p>Last edited <strong>25th August 2017</strong></p>
                </div>
            </div>
        </footer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:CinematicConnectionString %>" SelectCommand="SELECT [Name], [Username], [Email], [Message] FROM [Contact_Feedback]"></asp:SqlDataSource>
    </form>
</body>
</html>
