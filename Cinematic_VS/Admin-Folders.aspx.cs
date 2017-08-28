using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_Folders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void postButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CinematicConnectionString"].ConnectionString);
        try
        {
            con.Open();
            
                string register = "insert into Movies(Title,Genre,Duration,Showtime,Auditorium) values (@title,@genre,@duration,@showtime,@hall)";
                SqlCommand add = new SqlCommand(register, con);
                add.Parameters.AddWithValue("@title", Title.Text);
                add.Parameters.AddWithValue("@duration", durationID.Text);
                add.Parameters.AddWithValue("@showtime", showtimeID.Text);
                add.Parameters.AddWithValue("@hall", hallID.Text);
                add.Parameters.AddWithValue("@genre", genreList.Text);
                add.ExecuteNonQuery();
                Response.Write("Welcome you have been registered");
                //add page to redirect to or just use response.write to approve the users entry
               // Response.Redirect("Admin.aspx");


            con.Close();
        }
        catch (Exception)
        {
            Response.Write("Please check your input");
        }


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CinematicConnectionString"].ConnectionString);
        try
        {
            con.Open();
             string register = "insert into Movies(Title,Genre,Duration,Showtime,Auditorium) values (@title,@genre,@duration,@showtime,@hall)";
             SqlCommand add = new SqlCommand(register, con);
             add.Parameters.AddWithValue("@title", Title.Text);
             add.Parameters.AddWithValue("@genre", genreList.Text);
             add.Parameters.AddWithValue("@duration", durationID.Text);
             add.Parameters.AddWithValue("@showtime", showtimeID.Text);
             add.Parameters.AddWithValue("@hall", hallID.Text);
             
             add.ExecuteNonQuery();
             Response.Write("Welcome you have been registered");
             //add page to redirect to or just use response.write to approve the users entry
              Response.Redirect("Admin.aspx");

     
            con.Close();
        }
        catch (Exception)
        {
            Response.Write("Please check your input");
        }

    }


    public string getUsers()
    {
        //Get Data from database into html table...below
        string htmlStr = "";
        SqlConnection thisConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["CinematicConnectionString"].ConnectionString);
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT * from User_Account";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {

            int Id = reader.GetInt32(0);
            string Name = reader.GetString(1);
            string Email = reader.GetString(3);
            string Username = reader.GetString(2);
           

            htmlStr += "<tr><td>" + Id + "</td><td>" + Name + "</td><td>" + Email + "</td><td>" + Username + "</td></tr>";
        }

        thisConnection.Close();
        return htmlStr;
    }
    //Returns new movies added into the Page Movies Table
    public string getPageMovies()
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
            string Genre = reader.GetString(3);
            string Duration = reader.GetString(2);


            htmlStr += "<tr><td>" + Title + "</td><td>" + Genre + "</td><td>" + Duration + "</td></tr>";
        }

        thisConnection.Close();
        return htmlStr;
    }

    protected void logoutSession(object sender, EventArgs e)
    {
        Session.Abandon();
    }
}