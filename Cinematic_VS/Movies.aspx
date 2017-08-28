<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Movies.aspx.cs" Inherits="Movies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Document metadata -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Movies</title>
    <link rel="stylesheet" type="text/css" href="CSS/bulma.css" />
    <link rel="stylesheet" type="text/css" href="CSS/font-awesome.min.css" />
    <script src="https://use.fontawesome.com/9fc9211da7.js"></script>
</head>
<!--Body-->
<body>
    <form id="form1" runat="server">
        <!-- Navigation Bar -->
        <nav class="navbar ">
            <div class="navbar-brand">
                <a class="navbar-item" href="index.aspx">
                    <img src="img/logo.png" alt="Cinematic: An experience you will not believe" width="112" height="100">
                </a>

                <a class="navbar-item is-hidden-desktop" href="https://github.com/jgthms/bulma" target="_blank">
                    <span class="icon" style="color: #333;">
                        <i class="fa fa-github"></i>
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
                        <a class="navbar-link " href="index.aspx">Home
                        </a>
                        <div class="navbar-dropdown ">
                            <a class="navbar-item " href="#sectionNS">Now Showing
                            </a>
                            <a class="navbar-item " href="#sectionCS">Coming Soon
                            </a>
                        </div>
                    </div>
                    <div class="navbar-item has-dropdown is-hoverable">
                        <a class="navbar-link is-active" href="Movies.aspx">Movies
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
                    <asp:Label ID="userLabel" runat="server" Text="Welcome"></asp:Label>

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

                    <div id="actionButtons" runat="server">
                        <%--<asp:Panel ID="Panel1" runat="server"></asp:Panel>--%>
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
                    <%--<asp:Panel ID="Panel2" runat="server"></asp:Panel>--%>
                    <div id="logout" runat="server">
                        <asp:Button ID="Button1" runat="server" Text="LogOut" CssClass="button is-danger" OnClick="logoutUserSession" />
                    </div>
                </div>
            </div>
        </nav>
        <!--Hero-->
        <section class="hero is-dark is-bold">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title is-1">Movies
                    </h1>
                    <hr>
                    <h2 class="subtitle">The joy, the action, the fright...we have it all
                    </h2>
                </div>
            </div>
        </section>
        <!--Trailer Section-->
        <section class="section">
            <div class="container">
                <h1 class="title">BlockBuster Hits</h1>
                <hr />
                <div class="columns is-desktop is-multiline">
                    <div class="column">
                        <label class="label is-medium">Wonder Woman</label>
                        <iframe id="ytplayer" type="text/html" width="480" height="480"
                            src="https://www.youtube.com/embed/VSB4wGIdDwo?autoplay=0&origin=http://example.com&rel=0"
                            frameborder="0"></iframe>
                    </div>

                    <div class="column">
                        <label class="label is-medium">Kingsman 2: The Golden Circle</label>
                        <iframe id="ytplayer" type="text/html" width="480" height="480"
                            src="https://www.youtube.com/embed/0fvqnGmr9S8?autoplay=0&origin=http://example.com&rel=0"
                            frameborder="0"></iframe>
                    </div>



                    <div class="column">
                        <label class="label is-medium">Baby Driver
                        </label>
                        <iframe id="ytplayer" type="text/html" width="480" height="480"
                            src="https://www.youtube.com/embed/z2z857RSfhk?autoplay=0&origin=http://example.com&rel=0"
                            frameborder="0"></iframe>
                    </div>

                    <div class="column">
                        <label class="label is-medium">Pitch Perfect 3</label>
                        <iframe id="ytplayer" type="text/html" width="480" height="480"
                            src="https://www.youtube.com/embed/qZkuyLsN3gM?autoplay=0&origin=http://example.com&rel=0"
                            frameborder="0"></iframe>
                    </div>
                </div>
            </div>
        </section>

        <!--Showtimes Section-->
        <section class="section">
            <div class="container">
                <h1 class="title">Showtimes</h1>
                <hr />
                <h2 class="subtitle">Movie time...all the time...everytime
                </h2>
                <table id="movieShowtimes" class="table is-bordered is-striped">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Genre</th>
                            <th>Duration (mins)</th>
                            <th>Showtime(s)</th>
                            <th>Auditorium</th>
                        </tr>
                        <%=getMovieData() %>
                    </thead>
                </table>
            </div>

        </section>
        <!--Ticket Pricing Section-->
        <section class="section">
            <div class="container">
                <h1 class="title">Ticket Pricing</h1>
                <hr />
                <h2 class="subtitle">The right price, All the time
                </h2>
                <nav class="level">
                    <div class="level-item has-text-centered">
                        <div>
                            <p class="heading">BlockBuster</p>
                            <p class="title">RM 18.00</p>
                        </div>
                    </div>
                    <div class="level-item has-text-centered">
                        <div>
                            <p class="heading">Regular</p>
                            <p class="title">RM 12.00</p>
                        </div>
                    </div>
                    <div class="level-item has-text-centered">
                        <div>
                            <p class="heading">Children(Under 10)</p>
                            <p class="title">RM 10.00</p>
                        </div>
                    </div>
                </nav>
            </div>
        </section>
        <!--Ticketing Booking-->

        <section class="section">
            <div class="container" id="booking" runat="server">
                <h1 class="title">Ticketing</h1>
                <hr />
                <h2 class="subtitle">Ready to join in the experience, get your tickets <strong>here.</strong>
                </h2>
               <a class="button is-large is-info modal-button" data-toggle="modal" target="#modal-tick" id="ticketbtn" runat="server"
                    onclick="document.getElementById('modal-tick').style.display='block'">Tickets</a>
                

                <!--The Ticket Modal-->
                <div id="modal-tick" class="modal">
                    <div class="modal-background"></div>
                    <div class="modal-card">

                        <header class="modal-card-head">
                            <p class="modal-card-title">Ticket Order</p>
                            <button class="delete"></button>
                        </header>
                        <section class="modal-card-body">
                            <!-- Content -->
                            <label class="label">Select Movie</label>
                            
                                <div class="control">
                                    <asp:DropDownList ID="movieListing" runat="server" AutoPostBack="False" DataSourceID="SqlDataSource1"
                                        DataTextField="Title" DataValueField="Title" CssClass="select is-medium is-info">
                                    </asp:DropDownList>
                                </div>
                            
                            <hr>

                            <label class="label">Ticket Pricing</label>
                            <div class="control is-medium">
                                <asp:DropDownList ID="pricingTicket" runat="server" CssClass="select is-medium is-info">
                                    <asp:ListItem Value="18">BlockBuster</asp:ListItem>
                                    <asp:ListItem Value="12">Regular</asp:ListItem>
                                    <asp:ListItem Value="10">Children</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <hr>
                            <div class="columns">
                                <div class="column is-half">

                                    <label class="label">Number of Tickets</label>
                                    <div class="control is-medium">
                                        <asp:DropDownList ID="adultTickets" runat="server" CssClass="select is-medium">
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                </div>
                                <div class="column">
                                    <p>
                                        <label class="label">Number of Tickets(Children)</label>
                                        <div class="control is-medium">
                                            <asp:DropDownList ID="childrenTickets" runat="server" CssClass="select is-medium is-info">
                                                <asp:ListItem Value="1">None</asp:ListItem>
                                                <asp:ListItem Value="1">1</asp:ListItem>
                                                <asp:ListItem Value="2">2</asp:ListItem>
                                                <asp:ListItem Value="3">3</asp:ListItem>
                                                <asp:ListItem Value="4">4</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </p>
                                </div>
                            </div>
                            <hr>
                            <!--Payment Solutions-->
                            <label class="label is-medium">Payment</label>
                            <div class="field is-grouped">
                                <p class="control">
                                    <a class="button is-warning is-medium" href="#">MAYBANK</a>
                                </p>
                                <p class="control">
                                    <a class="button is-dark is-danger is-medium" href="#">CIMB</a>
                                </p>
                                <p class="control">
                                    <a class="button is-dark is-info is-medium" href="#">HONG LEONG</a>
                                </p>
                            </div>

                        </section>
                        <footer class="modal-card-foot">
                            <%--<a class="button is-success" href="Ticket_Confirm.aspx">Get Tickets</a>--%>
                            <asp:Button ID="getTickets" runat="server" Text="Get Tickets" CssClass="button is-success" OnClick="getTickets_OnClick" />
                            <a class="button" onclick="document.getElementById('modal-tick').style.display='none'">Cancel</a>
                        </footer>
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
                        &copy; 2017 <strong>Code256</strong>, Inc.  · <a href="#">Privacy  · </a><a href="#">Terms</a>
                    </p>
                    <a class="icon"><i class="fa fa-heart"></i>
                    </a>
                    <p>Last edited <strong>25th August 2017</strong></p>

                </div>
            </div>
        </footer>
        <script src="https://unpkg.com/vue"></script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:CinematicConnectionString %>" SelectCommand="SELECT [Title], [Genre], [Duration], [Showtime], [Auditorium] FROM [Movies]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CinematicConnectionString %>" SelectCommand="SELECT [Movie], [TicketPricing], [TicketAdult], [TicketChildren] FROM [Tickets]"></asp:SqlDataSource>
    </form>
</body>

</html>
