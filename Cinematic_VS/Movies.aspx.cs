using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Movies : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CinematicConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("Select Title, Genre, Duration, Showtime, Auditorium from Movies", con);
            DataTable movies = new DataTable();
            da.Fill(movies);
        }
        //Call the public method buttonHandling on Page_Load
        buttonVisibility();
        //btns visible = new btns();
        //visible.buttonVisibility();
    }

    //Create a public method handling the button Visibility
    public void buttonVisibility()
    {
        if (Session["UserType"] != null)
        {
            //When a Session Exists;
            //When the user is logged in, the login & sign up buttons are hidden and the Logout Button is shown
            
            actionButtons.Visible = false;
            logout.Visible = true;
            booking.Visible = true;
            
           
            ticketbtn.Disabled = false;
            
            

        }
        else//When the user is logged out, the login & sign up buttons are hidden and the Logout Button is shown
            
        logout.Visible = false;
        actionButtons.Visible = true;
        
        
        ticketbtn.Disabled = true;
       

        string Username = (string)(Session["Username"]);
        
    }



    public string getMovieData()
    {
        //Get Data from database into html table...below
        string htmlStr = "";
        SqlConnection thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["CinematicConnectionString"].ConnectionString);
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT * from Movies";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {

            string Title = reader.GetString(1);
            string Genre = reader.GetString(2);
            string Duration = reader.GetString(3);
            string Showtime = reader.GetString(4);
            string Auditorium = reader.GetString(5);

            htmlStr += "<tr><td>" + Title + "</td><td>" + Genre + "</td><td>" + Duration + "</td><td>" + Showtime + "</td><td>" + Auditorium + "</td></tr>";
        }

        thisConnection.Close();
        return htmlStr;


    }
    protected void getTickets_OnClick(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CinematicConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string book = "insert into Tickets(Movie,TicketPricing,TicketAdult,TicketChildren) values (@movie,@price,@adult,@children)";
            SqlCommand ticket = new SqlCommand(book, con);
            ticket.Parameters.AddWithValue("@movie", movieListing.Text);
            ticket.Parameters.AddWithValue("@price", pricingTicket.Text);
            ticket.Parameters.AddWithValue("@adult", adultTickets.Text);
            ticket.Parameters.AddWithValue("@children", childrenTickets.Text);
            //ticket.Parameters.Add("@price*@adult*@children");

            ticket.ExecuteNonQuery();
            Response.Redirect("Ticket_Confirm.aspx");


            con.Close();
        }
        catch (Exception)
        {
            Response.Write("Please check your input");
        }

    }

    protected void logoutUserSession(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");

    }
}