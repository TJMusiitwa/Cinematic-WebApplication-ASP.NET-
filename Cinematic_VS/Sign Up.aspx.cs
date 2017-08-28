using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Sign_Up : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registerButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CinematicConnectionString"].ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from User_Account where Username = '" + usernameTextBox.Text + "'", con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (check > 0)
            {
                Response.Write("Username Already Exists.");
            }
            else
            {
                string register = "insert into User_Account(Name,Username,UserType,Email,Password,ConfirmPassword) values (@name,@uname,@utype,@email,@pword,@conpword)";
                SqlCommand add = new SqlCommand(register,con);
                add.Parameters.AddWithValue("@name", nameTextBox.Text);
                add.Parameters.AddWithValue("@uname", usernameTextBox.Text);
                add.Parameters.AddWithValue("@utype", usertypeTextBox.Text);
                add.Parameters.AddWithValue("@email", emailTextBox.Text);
                add.Parameters.AddWithValue("@pword", Password.Value);
                add.Parameters.AddWithValue("@conpword", confPassword.Value);
                add.ExecuteNonQuery();
                Response.Write("Welcome you have been registered");
                //add page to redirect to or just use response.write to approve the users entry
                //Response.Redirect("Movies.aspx");

            }

            con.Close();
        }
        catch (Exception)
        {
            Response.Write("Please check your input");
            nameTextBox.Text = "";
            usernameTextBox.Text = "";
            emailTextBox.Text = "";
            Password.Value = "";
            confPassword.Value = "";
        }


    }

    protected void clearButton_Click(object sender, EventArgs e)
    {
        nameTextBox.Text = "";
        usernameTextBox.Text = "";
        emailTextBox.Text = "";
        Password.Value = "";
        confPassword.Value = "";

    }
}