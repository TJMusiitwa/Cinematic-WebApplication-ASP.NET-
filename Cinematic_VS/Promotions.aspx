<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Promotions.aspx.cs" Inherits="Promotions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Promotions</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/bulma.css">
    <link rel="stylesheet" href="CSS/normalize.css">
    <link rel="stylesheet" type="text/css" href="CSS/admin.css">
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
                    <a class="navbar-item is-active" href="#">Promotions
                    </a>
                    <a class="navbar-item" href="Contact Us.aspx">Contact Us
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
        <!--Hero Section-->
        <section class="hero is-warning is-bold">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title is-1">All the best promos in one place</h1>

                </div>
            </div>
        </section>
        <div>
            <hr />
        </div>
        <!--Countdown Timer for Promotions Page-->
        <section class="hero is-success is-bold is-medium">
            <div class="hero-body">
                <div class="container">
                    <!-- Display the countdown timer in an element -->
                    <h1 class="title is-1" id="demo"></h1>
                    <h2 class="subtitle is-2">Witness the <strong>best superhero movies</strong> go head-to-head</h2>
                </div>
            </div>
        </section>

        <script>
            // Set the date we're counting down to
            var countDownDate = new Date("Nov 5, 2017 12:12:01").getTime();

            // Update the count down every 1 second
            var x = setInterval(function () {

                // Get todays date and time
                var now = new Date().getTime();

                // Find the distance between now an the count down date
                var distance = countDownDate - now;

                // Time calculations for days, hours, minutes and seconds
                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                // Display the result in the element with id="demo"
                document.getElementById("demo").innerHTML = days + "d " + hours + "h "
                + minutes + "m " + seconds + "s ";

                // If the count down is finished, write some text 
                if (distance < 0) {
                    clearInterval(x);
                    document.getElementById("demo").innerHTML = "TWO WORLDS COLLIDE";
                }
            }, 1000);
        </script>
        <!--Promotions Section-->
        <section class="section">
            
                <h1 class="title">DC vs Marvel</h1>
                <hr>
                <h2 class="subtitle">Battle for the best Hero Movie</h2>
                <div class="columns is-desktop">
                    <div class="column">
                        <img src="img/JLposter.jpg" />
                    </div>
                    <div class="column">
                        <img src="img/thor3.jpg" />
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
                        &copy; 2017 <strong>Code256</strong>, Inc.  · <a href="#">Privacy  · </a><a href="#">Terms</a>
                    </p>
                    <a class="icon"><i class="fa fa-heart"></i>
                    </a>
                    <p>Last edited <strong>25th August 2017</strong></p>

                </div>
            </div>
        </footer>
    </form>
</body>
</html>
