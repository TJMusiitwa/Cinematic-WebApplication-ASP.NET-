<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin-Activity.aspx.cs" Inherits="Admin_Activity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin-Activity</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/bulma.css">
    <link rel="stylesheet" href="CSS/normalize.css">
    <link rel="stylesheet" type="text/css" href="CSS/admin.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.bundle.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<!--Body-->
<body runat="server">
    <div class="columns">
        <aside class="column is-2 aside hero is-medium is-hidden-mobile is-one-third">
            <div>
                <div class="main">
                    <img src="img/logo.png" alt="Logo-Cinematic">
                    <div class="title">
                        <h1>Main</h1>
                    </div>
                    <a href="Admin.aspx" class="item"><span class="icon"><i class="fa fa-home"></i></span><span class="name">Dashboard</span></a>
                    <a href="Admin-Activity.aspx" class="item active"><span class="icon"><i class="fa fa-map-marker"></i></span><span class="name">Activity</span></a>
                    <a href="Admin-Folders.aspx" class="item"><span class="icon"><i class="fa fa-folder-o"></i></span><span class="name">Folders</span></a>
                    <a href="Admin-logout.aspx" class="item" onclick="logoutSession"><span class="icon"><i class="fa fa-lock"></i></span><span class="name">Log Out</span></a>
                </div>
            </div>
        </aside>
        <section class="column is-10 admin-panel">
            <nav class="nav has-shadow is-hidden-tablet is-dark" id="top">
                <div class="container">
                    <span class="nav-toggle">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                    <div class="nav-bar nav-menu is-hidden-tablet">
                        <a href="Admin.html" class="nav-item">Dashboard
                        </a>
                        <a href="Admin-Activity.aspx" class="nav-item is-active">Activity
                        </a>
                        <a href="Admin-Folders.aspx" class="nav-item">Folders
                        </a>
                        <a href="Admin-logout.aspx" class="nav-item" onclick="logoutSession">Log Out
                        </a>
                    </div>
                </div>
            </nav>
            <!-- Hero section: will be in the middle -->
            <section class="hero is-small is-info">
                <!-- Hero content: will be in the middle -->
                <div class="hero-body">
                    <div class="container">
                        <h1 class="title">Admin Activity
                        </h1>
                        <hr>
                        <h2 class="subtitle">Monitor & Analyse the site's performance</h2>
                    </div>
                </div>

            </section>

            <!-- Activity Content-->
            <section class="section">
                <%--The Pie Chart--%>
                <div class="tile is-ancestor">
                    <div class="tile is-parent">
                        <article class="tile is-child box">
                            <p class="title">Browser operation</p>
                            <p class="subtitle">Common browsers that connect to the website</p>
                            <div class="content">
                                <div id="donutchart" style="width: 450px; height: 400px;"></div>
                                <script type="text/javascript">
                                    google.charts.load("current", { packages: ["corechart"] });
                                    google.charts.setOnLoadCallback(drawChart);
                                    function drawChart() {
                                        var data = google.visualization.arrayToDataTable([
                                          ['Browser', 'Hours per Day'],
                                          ['Chrome', 11],
                                          ['Opera', 2],
                                          ['IE/Edge', 2],
                                          ['Safari', 2],
                                          ['Firefox', 7]
                                        ]);

                                        var options = {

                                            is3D: true,

                                        };

                                        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
                                        chart.draw(data, options);
                                    }
                                </script>
                            </div>
                        </article>
                    </div>
                    <%--The Radar Chart--%>
                    <div class="tile is-parent">
                        <article class="tile is-child notification">
                            <div class="content">
                                <p class="title">Top Movie Genres</p>
                                <p class="subtitle">Basing on the Gender of Visitors</p>
                                <div class="content">
                                    <canvas id="radarChart" width="400" height="400"></canvas>
                                    <script>
                                        var ctx = document.getElementById("radarChart").getContext('2d');
                                        var myChart = new Chart(ctx, {
                                            type: 'radar',
                                            data: {
                                                labels: ["Action", "Horror", "Animation", "Adventure", "Romance", "Sci-fi"],
                                                datasets: [{
                                                    label: 'Male',
                                                    data: [100, 59, 90, 81, 56, 55, 40],
                                                    fill: true,
                                                    backgroundColor: [

                                                        'rgba(255, 159, 64, 0.2)'
                                                    ],
                                                    borderColor: [

                                                       'rgba(255, 159, 64, 1)'
                                                    ],
                                                    borderWidth: 1
                                                },
                                                {
                                                    label: 'Female',
                                                    data: [28, 48, 40, 19, 96, 27, 65],
                                                    fill: true,
                                                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                                                    borderColor: 'rgb(54, 162, 235)',
                                                    pointBackgroundColor: 'rgb(54, 162, 235)',
                                                    pointBorderColor: "#fff",
                                                    pointHoverBackgroundColor: "#fff",
                                                    pointHoverBorderColor: 'rgb(54, 162, 235)'
                                                }]
                                            },
                                            options: {
                                                elements: {
                                                    line: {
                                                        borderWidth: 3
                                                    }
                                                }
                                            }
                                        });
                                    </script>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
                <!--Line Graph-->
                <div class="tile is-parent is-9">
                    <article class="tile is-child box">
                        <p class="title">Customer Activity</p>
                        <p class="subtitle">Period of 5 months (April '17- August '17)</p>
                        <div class="content">
                            <canvas id="myLineChart" width="400" height="200"></canvas>
                            <script>
                                var ctx = document.getElementById("myLineChart");
                                var myLineChart = new Chart(ctx, {
                                    type: 'line',
                                    data: {
                                        labels: ["April", "May", "June", "July", "August"],
                                        datasets: [{
                                            label: '# of (00)Users',
                                            data: [12, 19, 3, 5, 2],
                                            backgroundColor: [

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
                                &copy; 2017 <strong>Code256</strong>, Inc.  · <a href="#">Privacy  · </a><a href="#">Terms  ·</a><a href="#">Career  ·</a>
                                <a href="#">Site map</a>
                            </p>
                            <a class="icon"><i class="fa fa-heart"></i>
                            </a>
                        </p>
                    </div>
                </div>
            </footer>
</body>
</html>
