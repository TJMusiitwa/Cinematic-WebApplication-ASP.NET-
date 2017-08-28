<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

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
    <title>About</title>
</head>

<!--Body-->
<body>
    
    <!-- Navigation Bar -->
    <nav class="navbar ">
        <div class="navbar-brand">
            <a class="navbar-item" href="index.aspx">
                <img src="img/logo.png" alt="Cinematic: An experience you will not believe" width="112" height="100">
            </a>

            <a class="navbar-item is-hidden-desktop" href="#" target="_blank">
                <span class="icon" style="color: #333;">
                    <i class="fa fa-github"></i>
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
                        <a class="navbar-item " href="#">Movie Guide
                        </a>
                    </div>
                </div>
                <div class="navbar-item has-dropdown is-hoverable">
                    <a class="navbar-link is-active" href="About.aspx">About
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

    <!--About-->
    <section class="hero is-danger is-bold">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">Get to know us
                </h1>
                <hr>
                <h2 class="subtitle">and all that we have to offer you
                </h2>
            </div>
        </div>
    </section>
    <!--About Content-->
    <div class="container">
        <section class="section">
            <div class="container">
                <h1 class="title">About Us</h1>
                <hr>
                <section class="section">
                    <h2 class="subtitle is-5">What kind of movies do you like the most? Comedy, Drama, Horror, Action?</h2>
                    <p class="content">
                        Well, it doesn't matter, as you will find movies of all genres in our offering. 
                    </p>
                    <p class="content">
                        Experience the <em>quality viewing experience with the best sound quality with the comfort of royalty</em>, all from our 
                    vast <strong>20</strong> screens across 2 locations.
                    </p>
                    <p class="content">
                        Come see us for all your viewing pleasures &amp; more
                    </p>
                </section>
                <div></div>
                <div class="columns is-desktop">
                    <div class="column">
                        <img src="img/seventeen.jpg" height="256" width="256">
                        <p class="label">
                            Comedy &amp; Drama 
                        </p>
                    </div>
                    <div class="column">
                        <figure>
                            <img src="img/horrorNun.jpg" height="256" width="256">
                        </figure>
                        <p class="label">
                            Horror
                        </p>
                    </div>
                    <div class="column">
                        <figure>
                            <img src="img/actionSpider.jpg" height="256" width="256">
                        </figure>
                        <p class="label">
                            Action
                        </p>
                    </div>
                </div>
        </section>

        <section class="section">
            <div class="container">
                <h1 class="title">Blog</h1>
                <hr>
                <h2 class="subtitle">A simple container to divide your page into <strong>sections</strong>, like the one you're currently reading
                </h2>
                <article class="message is-dark is-medium">
                    <div class="message-header">
                        <p>Spiderman:Homecoming launches with bang </p>

                    </div>
                    <div class="message-body">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Pellentesque risus mi</strong>, tempus quis placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Aenean ac <em>eleifend lacus</em>, in mollis lectus. Donec sodales, arcu et sollicitudin porttitor, tortor urna tempor ligula, id porttitor mi magna a neque. Donec dui urna, vehicula et sem eget, facilisis sodales sem.
                    </div>
                </article>

                <%-- Message 2 --%>
                <article class="message is-dark is-large">
                    <div class="message-header">
                        <p>Bring your family, friends & loved ones. Get a Discounted Offer</p>

                    </div>
                    <div class="message-body">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Pellentesque risus mi</strong>, tempus quis placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Aenean ac <em>eleifend lacus</em>, in mollis lectus. Donec sodales, arcu et sollicitudin porttitor, tortor urna tempor ligula, id porttitor mi magna a neque. Donec dui urna, vehicula et sem eget, facilisis sodales sem.
                    </div>
                </article>

                <%-- Message 3 --%>
                <article class="message is-dark">
                    <div class="message-header">
                        <p>Launching the next greatest Cinema experience with Cinematic</p>

                    </div>
                    <div class="message-body">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Pellentesque risus mi</strong>, tempus quis placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Aenean ac <em>eleifend lacus</em>, in mollis lectus. Donec sodales, arcu et sollicitudin porttitor, tortor urna tempor ligula, id porttitor mi magna a neque. Donec dui urna, vehicula et sem eget, facilisis sodales sem.
                    </div>
                </article>
            </div>
        </section>


        <!--Follower count-->
        <h1 class="title">Social Following</h1>
        <hr>
        <nav class="level is-mobile">
            <div class="tile is-parent">
                <article class="tile is-child notification is-info has-text-centered stat-tile">
                    <p class="title">456K</p>
                    <p class="subtitle"><i class="fa fa-twitter"></i></p>
                </article>
            </div>


            <div class="tile is-parent">
                <article class="tile is-child notification is-dark has-text-centered stat-tile">
                    <p class="title">789</p>
                    <p class="subtitle"><i class="fa fa-facebook"></i></p>
                </article>
            </div>


            <div class="tile is-parent">
                <article class="tile is-child notification is-danger has-text-centered stat-tile">
                    <p class="title">212</p>
                    <p class="subtitle"><i class="fa fa-instagram"></i></p>
                </article>
            </div>

        </nav>
    </div>
    <!--Footer-->
    <footer class="footer">
        <div class="container">
            <div class="content has-text-centered">
                <p>
                    <strong>Created</strong> by <a href="index.html">TJ & Nurain</a>. Oh what
        <a href="#">fun </a>you will have. We don't say it, we <a href="#">guarantee </a>it.
                </p>
                <p>
                    &copy; 2017 <strong>Code256</strong>, Inc.  · <a href="#">Privacy  · </a><a href="#">Terms</a>
                </p>
                <a class="icon"><i class="fa fa-heart"></i>
                </a>
                <p>Last edited <strong>25th August 2017</strong></p>

            </div>
        </div>
    </footer>
</body>

</html>
