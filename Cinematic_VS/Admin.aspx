<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin-Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/bulma.css">
    <link rel="stylesheet" href="CSS/normalize.css">
    <link rel="stylesheet" type="text/css" href="CSS/admin.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.bundle.js"></script>
</head>
<!--Body-->
<body>
    <form runat="server" id="form1">
        <div class="columns">
            <aside class="column is-2 aside hero is-medium is-hidden-mobile is-one-third">
                <div>
                    <div class="main">
                        <img src="img/logo.png" alt="Logo-Cinematic">
                        <div class="title">
                            <h1>Main</h1>
                        </div>
                        <a href="Admin.aspx" class="item active"><span class="icon"><i class="fa fa-home"></i></span><span class="name">Dashboard</span></a>
                        <a href="Admin-Activity.aspx" class="item"><span class="icon"><i class="fa fa-map-marker"></i></span><span class="name">Activity</span></a>
                        <a href="Admin-Folders.aspx" class="item"><span class="icon"><i class="fa fa-folder-o"></i></span><span class="name">Folders</span></a>
                        <a href="Admin-logout.aspx" class="item"><span class="icon"><i class="fa fa-lock"></i></span><span class="name">Log Out</span></a>
                    </div>
                </div>
            </aside>
            <div class="column is-10 admin-panel">
                <nav class="nav has-shadow is-hidden-tablet is-dark" id="top">
                    <div class="container">
                        <span class="nav-toggle"></span>
                        <div class="nav-bar nav-menu is-hidden-tablet">
                            <a href="#" class="nav-item is-active">Dashboard</a>
                            <a href="Admin-Activity.aspx" class="nav-item">Activity</a>
                            <a href="Admin-Folders.aspx" class="nav-item">Folders</a>
                            <a href="Admin-logout.aspx" class="nav-item">Log Out</a>
                        </div>
                    </div>
                </nav>
                <section class="hero is-small is-info">
                    <!-- Hero content: will be in the middle -->
                    <div class="hero-body">
                        <div class="container">
                            <h1 class="title">Admin Dashboard</h1>
                            <hr />
                            <h2 class="subtitle">Welcome, Administrator</h2>
                        </div>
                    </div>
                    <!-- Hero footer: will stick at the bottom -->
                    <div class="hero-foot">
                        <nav class="level">
                            <div class="level-item has-text-centered">
                                <div>
                                    <p class="heading">Tweets</p>
                                    <p class="title">3,456</p>
                                </div>
                            </div>
                            <div class="level-item has-text-centered">
                                <div>
                                    <p class="heading">Following</p>
                                    <p class="title">123</p>
                                </div>
                            </div>
                            <div class="level-item has-text-centered">
                                <div>
                                    <p class="heading">Followers</p>
                                    <p class="title">456</p>
                                </div>
                            </div>
                            <div class="level-item has-text-centered">
                                <div>
                                    <p class="heading">Likes</p>
                                    <p class="title">789K</p>
                                </div>
                            </div>
                            <div class="level-item has-text-centered">
                                <div>
                                    <p class="heading">Page Visits</p>
                                    <p class="title">2000</p>
                                </div>
                            </div>
                        </nav>
                    </div>
                    <hr />
                </section>


                <!--Dashboard Content-->
                <section class="section">
                    <div class="tile is-ancestor">
                        <div class="tile is-vertical is-6">
                            <div class="tile">
                                <div class="tile is-parent is-vertical">
                                    <!--Chart showing Sales-->
                                    <article class="tile is-child box">
                                        <p class="title">Ticket Sales Measure</p>
                                        <p class="subtitle">Total Sales of Tickets in the past months</p>
                                        <div class="content">
                                            <canvas id="myChart" width="300" height="350"></canvas>
                                            <script>
                                                var ctx = document.getElementById("myChart");
                                                var myChart = new Chart(ctx, {
                                                    type: 'bar',
                                                    data: {
                                                        labels: ["May", "June", "July", "August", "September", "October"],
                                                        datasets: [{
                                                            label: '# of Ticket Sales',
                                                            data: [12, 19, 3, 5, 2, 3],
                                                            backgroundColor: [
                                                                'rgba(255, 99, 132, 0.2)',
                                                                'rgba(54, 162, 235, 0.2)',
                                                                'rgba(255, 206, 86, 0.2)',
                                                                'rgba(75, 192, 192, 0.2)',
                                                                'rgba(153, 102, 255, 0.2)',
                                                                'rgba(255, 159, 64, 0.2)'
                                                            ],
                                                            borderColor: [
                                                                'rgba(255,99,132,1)',
                                                                'rgba(54, 162, 235, 1)',
                                                                'rgba(255, 206, 86, 1)',
                                                                'rgba(75, 192, 192, 1)',
                                                                'rgba(153, 102, 255, 1)',
                                                                'rgba(255, 159, 64, 1)'
                                                            ],
                                                            borderWidth: 1
                                                        }]
                                                    },
                                                    options: {
                                                        scales: {
                                                            yAxes: [{
                                                                ticks: {
                                                                    beginAtZero: true
                                                                }
                                                            }]
                                                        }
                                                    }
                                                });
                                            </script>
                                        </div>

                                    </article>

                                </div>
                            </div>
                        </div>

                        <!--Message a User-->
                        <article class="tile is-child box">
                            <section class="panel">
                                <p class="title">Message User</p>
                                <div class="field">
                                    <label class="label">Name</label>
                                    <div class="control">
                                        <input class="input" type="text" placeholder="Text input" />
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Username</label>
                                    <div class="control">
                                        <input class="input" type="text" placeholder="Text input" />
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Email</label>
                                    <div class="control">
                                        <input class="input" type="text" placeholder="Text input" />
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Message</label>
                                    <div class="control">
                                        <textarea class="textarea" placeholder="Textarea"></textarea>
                                    </div>
                                </div>
                                <div class="field is-grouped">
                                    <div class="control">
                                        <button class="button is-primary" onclick="messageSent">Submit</button>
                                    </div>
                                    <div class="control">
                                        <button class="button is-link" onclick="clearForm">Cancel</button>
                                    </div>
                                </div>
                            </section>
                        </article>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CinematicConnectionString %>" SelectCommand="SELECT [Movie], [TicketAdult], [TicketChildren], [Total], [BookingTime] FROM [Tickets]"></asp:SqlDataSource>
        <script async type="text/javascript" src="JS/bulma.js"></script>
        <script type="text/javascript" src="JS/jQuery.js"></script>
    </form>
</body>
</html>
