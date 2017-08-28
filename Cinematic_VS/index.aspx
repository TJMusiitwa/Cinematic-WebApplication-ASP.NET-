<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Document metadata -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cinematic Home</title>
    <link rel="stylesheet" type="text/css" href="CSS/bulma.css">
    <script src="JS/bulma.js"></script>
    <script src="https://use.fontawesome.com/9fc9211da7.js"></script>

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
                            <a class="navbar-link is-active" href="index.aspx">Home
                            </a>
                            <div class="navbar-dropdown ">
                                <a class="navbar-item " href="#/sectionNS">Now Showing
                                </a>
                                <a class="navbar-item " href="#/sectionCS">Coming Soon
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

        <section class="hero is-light is-bold">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title is-1">Home
                    </h1>
                    <hr>
                    <h2 class="subtitle is-3">It's the best 'Cinematic Experience' in town
                    </h2>
                </div>
            </div>
        </section>

        <!--Now Showing movies Section-->
        <section class="section is-medium">
            <div class="container">
                <h1 class="title">Now Showing</h1>
                <hr>
                <h2 class="subtitle">Come Have Fun With Cinematic&nbsp; before you Miss Out!!!</h2>
                <div class="columns is-desktop">
                    <div class="column">
                        <img src="img/Arthur1.jpg" /><p><b>King Arthur: Legend of the Sword </b></p>
                    </div>
                    <div class="column">
                        <img src="img/Beuty And the Beast1.jpg" />
                        <p><b>Beauty and the Beast </b></p>
                    </div>
                    <div class="column">
                        <img src="img/EveryThing.jpg" />
                        <p><b>Everything Everything </b></p>
                    </div>
                    <div class="column">
                        <img src="img/Game Of Thrones 1.jpg" />
                        <p><b>Game of Thrones </b></p>
                    </div>
                </div>
            </div>
        </section>
        <!--Now Showing movies Section-->
        <section class="section is-medium">
            <div class="container">
                <h1 class="title">Coming Soon</h1>
                <hr>
                <h2 class="subtitle">A simple container to divide your page into <strong>sections</strong>, like the one you're currently reading
                </h2>
                <div class="columns is-multiline is-mobile">
                    <div class="column is-one-quarter">
                        <figure class="image is-128x128">
                            <img src="img/WonderWo.jpeg">
                        </figure>
                        <p>
                            <b>Wonder Woman (2017) </b>
                            <p>PG-13 | 141 min | Action, Adventure, Fantasy</p>
                            Before she was Wonder Woman, she was Diana, princess of the Amazons, trained warrior. When a pilot crashes and tells of conflict in the outside world, she leaves home to fight a war, discovering her full powers and true destiny.
                          
                        </p>
                    </div>
                    <div class="column is-one-quarter">
                        <figure class="image is-128x128">
                            <img src="img/emoji.jpeg">
                        </figure>
                        <p>
                            <b>The Emoji Movie (2017) </b>
                            <p>PG | 86 min | Animation, Adventure, Comedy</p>
                            Gene, a multi-expressional emoji, sets out on a journey to become a normal emoji.
                        </p>
                    </div>
                    <div class="column is-one-quarter">
                        <figure class="image is-128x128">
                            <img src="img/Okja.jpg">
                        </figure>
                        <p>
                            <b>Okja (2017) </b>
                            <p>TV-MA | 120 min | Action, Adventure, Drama</p>
                            Meet Mija, a young girl who risks everything to prevent a powerful, multi-national company from kidnapping her best friend - a fascinating animal named Okja.
                        </p>
                    </div>
                    <div class="column is-one-quarter">
                        <figure class="image is-128x128">
                            <img src="img/PlanetApes.jpg">
                        </figure>
                        <p>
                            <b>War for the Planet of the Apes (2017) </b>
                            <p>PG-13 | 2h 20min | Action, Adventure, Drama  </p>
                            After the apes suffer unimaginable losses, Caesar wrestles with his darker instincts and begins his own mythic quest to avenge his kind.
                        </p>
                    </div>
                    <div class="column is-one-quarter">
                        <figure class="image is-128x128">
                            <img src="img/nyneleven.png">
                        </figure>
                        <p>
                            <b>9/11  (2017)</b>
                            <p>R | 90 min | Action, Drama | Completed</p>
                            A group of 5 people find themselves trapped in an elevator in the World Trade Center's North Tower on 9/11. They work together, never giving up hope, to try to escape before the unthinkable happens.
                        </p>
                    </div>
                    <div class="column is-one-quarter">
                        <figure class="image is-128x128">
                            <img src="img/galaxy1.jpeg">
                        </figure>
                        <p>
                            <b>Guardians of the Galaxy Vol. 2 (2017)</b>
                            <p>PG-13 | 136 min | Action, Adventure, Sci-Fi</p>
                            The Guardians must fight to keep their newfound family together as they unravel the mystery of Peter Quill's true parentage.
                        </p>
                    </div>
                    <div class="column is-one-quarter">
                        <figure class="image is-128x128">
                            <img src="img/Only living boy.jpg">
                        </figure>
                        <p>
                            <b>The Only Living Boy in New York (2017)</b>
                            <p>R | 1h 28min | Drama | 11 August 2017 (USA)</p>
                            Adrift in New York City, a recent college graduate's life is upended by his father's mistress.
                        </p>
                    </div>
                    <div class="column is-one-quarter">
                        <figure class="image is-128x128">
                            <img src="img/WimpyKid.jpg">
                        </figure>
                        <p>
                            <b>Diary of a Wimpy Kid: The Long Haul (2017)</b>
                            <p>PG | 1h 31min | Comedy, Family | 19 May 2017 (USA)</p>
                            A Heffley family road trip to attend Meemaw's 90th birthday party goes hilariously off course thanks to Greg's newest scheme to get to a video gaming convention.
                        </p>
                    </div>
                    <div class="column">
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
                        &copy; 2017 <strong>Code256</strong>, Inc. · <a href="#">Privacy  · </a><a href="#">Terms  ·</a><a href="#">Career  ·</a>
                        <a href="#">Site map</a>
                    </p>
                    <a class="icon"><i class="fa fa-heart"></i>
                    </a>

                </div>
            </div>
    </form>
</body>
</html>
