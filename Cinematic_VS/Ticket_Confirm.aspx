<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ticket_Confirm.aspx.cs" Inherits="Ticket_Confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Document metadata -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="CSS/bulma.css" />
    <script src="JS/bulma.js"></script>
    <script src="https://use.fontawesome.com/9fc9211da7.js"></script>

    <title>Ticket_Confirm</title>
</head>

<!--Body-->
<body runat="server">
    <!-- Navigation Bar -->
    <nav class="navbar ">
        <div class="navbar-brand">
            <a class="navbar-item" href="index.html">
                <img src="http://bulma.io/images/bulma-logo.png" alt="Cinematic: An experience you will not believe" width="112" height="28">
            </a>

            <a class="navbar-item is-hidden-desktop" href="https://www.facebook.com" target="_blank">
                <span class="icon" style="color: #333;">
                    <i class="fa fa-facebook"></i>
                </span>
            </a>

            <a class="navbar-item is-hidden-desktop" href="https://twitter.com/jgthms" target="_blank">
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
                    <a class="navbar-link  is-active" href="Movies.aspx">Movies
                    </a>
                    <div class="navbar-dropdown ">
                        <a class="navbar-item " href="#">Showtimes
                        </a>
                        <a class="navbar-item " href="#">Ticketing
                        </a>
                        <a class="navbar-item " href="#">Movie Guide
                        </a>
                    </div>
                </div>
                <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link " href="About.html">About
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
                <a class="navbar-item " href="Contact Us.aspx">Contact Us
                </a>


            </div>

            <div class="navbar-end">
                <span class="icon">
                    <i class="fa fa-facebook-square fa-3x" aria-hidden="true" target="https://www.facebook.com"></i>
                </span>
                <span class="icon">
                    <i class="fa fa-twitter-square" aria-hidden="true"></i>
                </span>
                <span class="icon"><i class="fa fa-instagram" aria-hidden="true"></i></span>
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
                            <a class="button is-info" href="Sign Up.aspx">
                                <span>Sign Up</span>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!--Massive hero confirmation & return button-->
    <section class="hero is-love rainbow is-fullheight">
        <div class="hero-body">
            <div class="container">
                <div class="columns is-vcentered">
                    <div class="column">
                        <h1 class="title">Ticket Booking Confirmed
                        </h1>
                        <p class="subtitle">
                            We can't wait to have you! <span style="font-size: 20px; margin-left: 2px; position: relative; top: 1px;"></span>
                        </p>
                    </div>
                    <div class="column">

                        <a class="button is-info is-outlined is-large is-inverted has-icons-left" href="Movies.aspx">
                            <span class="icon is-medium is-left"><i class="fa fa-arrow-left"></i></span>
                            <span>Return to Ticketing </span>
                            
                        </a>

                    </div>
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
                        &copy; 2017 <strong>Code256</strong>, Inc.  Â· <a href="#">Privacy  Â· </a><a href="#">Terms  Â·</a><a href="#">Career  Â·</a>
                        <a href="#">Site map</a>
                    </p>
                    <a class="icon"><i class="fa fa-heart"></i></a>

            </div>
        </div>
    </footer>
</body>
</html>
