<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin-Folders.aspx.cs" Inherits="Admin_Folders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin-Folders</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/bulma.css">
    <link rel="stylesheet" href="CSS/normalize.css">
    <link rel="stylesheet" type="text/css" href="CSS/admin.css">
</head>

<!--Body-->
<body>
    <form id="form1" runat="server">
        <div class="columns">
            <aside class="column is-2 aside hero is-medium is-hidden-mobile is-one-third">
                <div>
                    <div class="main">
                        <img src="img/logo.png" alt="Logo-Cinematic">
                        <div class="title">
                            <h1>Main</h1>
                        </div>
                        <a href="Admin.aspx" class="item"><span class="icon"><i class="fa fa-home"></i></span><span class="name">Dashboard</span></a>
                        <a href="Admin-Activity.aspx" class="item"><span class="icon"><i class="fa fa-map-marker"></i></span><span class="name">Activity</span></a>
                        <a href="Admin-Folders.aspx" class="item active"><span class="icon"><i class="fa fa-folder-o"></i></span><span class="name">Folders</span></a>
                        <a href="Admin-logout.aspx" class="item" onclick="logoutSession"><span class="icon"><i class="fa fa-lock"></i></span><span class="name">Log Out</span></a>
                    </div>
                </div>
            </aside>
            <div class="column is-10 admin-panel">
                <nav class="nav has-shadow is-hidden-tablet is-dark" id="top">
                    <div class="container">
                        <span class="nav-toggle">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                        <div class="nav-bar nav-menu is-hidden-tablet">
                            <a href="Admin.aspx" class="nav-item">Dashboard
                            </a>
                            <a href="Admin-Activity.aspx" class="nav-item">Activity
                            </a>
                            <a href="Admin-Folders.aspx" class="nav-item is-active">Folders
                            </a>
                            <a href="Admin-logout.aspx" class="nav-item" onclick="logoutSession">Log Out
                            </a>
                        </div>
                    </div>
                </nav>

                <section class="hero is-small is-info">
                    <!-- Hero content: will be in the middle -->
                    <div class="hero-body">
                        <div class="container">
                            <h1 class="title">Administrator Folders
                            </h1>
                            <hr>
                            <h2 class="subtitle">Manage the website's content here</h2>
                        </div>
                    </div>
                </section>
                <!--Folder Management Content-->
                <section class="section">
                    <div class="columns">
                        <div class="column is-half">
                            <div class="tile is-12 is-vertical is-parent">
                                <div class="tile is-child box">
                                    <p class="title">Add new movies titles</p>
                                    <div class="field">
                                        <label class="label">Title</label>
                                        <div class="control">

                                            <asp:TextBox ID="Title" runat="server" placeholder="e.g Avatar,Spiderman 2, Furious 9" CssClass="input"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="field">
                                        <label class="label">Length(min)</label>
                                        <div class="control">

                                            <asp:TextBox ID="durationID" runat="server" placeholder="120,98" CssClass="input"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="field">
                                        <label class="label">Showtime(s)</label>
                                        <div class="control">

                                            <asp:TextBox ID="showtimeID" runat="server" placeholder="12:30pm, 3:30pm, 9:00pm" CssClass="input"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="field">
                                        <label class="label">Hall</label>
                                        <div class="control">

                                            <asp:TextBox ID="hallID" runat="server" placeholder="Hall 01" CssClass="input"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="field">
                                        <label class="label">Genre</label>
                                        <p class="control has-icons-left">
                                            <span class="select">
                                                <asp:DropDownList ID="genreList" runat="server">
                                                    <asp:ListItem>Action</asp:ListItem>
                                                    <asp:ListItem>Animation</asp:ListItem>
                                                    <asp:ListItem>Romance</asp:ListItem>
                                                    <asp:ListItem>Adventure</asp:ListItem>
                                                    <asp:ListItem>Horror</asp:ListItem>
                                                </asp:DropDownList>
                                            </span>
                                            <span class="icon is-small is-left">
                                                <i class="fa fa-film"></i>
                                            </span>
                                        </p>

                                    </div>

                                    <div class="control">


                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Post" CssClass="button is-medium is-info" />
                                    </div>

                                </div>
                                <%--Return list of movies in the database--%>
                                <div class="column">
                                    <div class="tile is-child box">
                                        <p class="title">Current Movie Titles</p>
                                        <table class="table is-bordered is-striped">
                                            <thead>
                                                <tr>
                                                    <th>Title
                                                    </th>
                                                    <th>Genre</th>
                                                    <th>Length
                                                    </th>
                                                </tr>
                                                <%=getPageMovies() %>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--Return list of Registered users in the database--%>
                        <div class="column is-half">
                            <div class="tile is-parent">
                                <div class="tile is-child box">
                                    <p class="title">Current Registered Users</p>
                                    <table class="table is-bordered is-striped">
                                        <thead>
                                            <tr>
                                                <th>ID
                                                </th>
                                                <th>Name</th>
                                                <th>
                                                    <abbr title="Email">Email</abbr>
                                                </th>
                                                <th>
                                                    <abbr title="Username">Uname</abbr>
                                                </th>
                                            </tr>
                                            <%=getUsers() %>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </section>
            </div>
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
                        <p>
                            &copy; 2017 <strong>Code256</strong>, Inc.  · <a href="#">Privacy  · </a><a href="#">Terms  ·</a><a href="#">Career  ·</a>
                            <a href="#">Site map</a>
                        </p>
                        <a class="icon"><i class="fa fa-heart"></i>
                        </a>
                    </p>
                </div>
            </div>
        </footer>
        <script async type="text/javascript" src="JS/bulma.js"></script>
        <script type="text/javascript" src="JS/jQuery.js"></script>
        <script type="text/javascript" src="../demo/raphael.min.js"></script>
        <script type="text/javascript" src="../demo/morris.js"></script>
        <script type="text/javascript" src="../demo/admin.js"></script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:CinematicConnectionString %>" SelectCommand="SELECT * FROM [Movies]"></asp:SqlDataSource>
    </form>
</body>
</html>
