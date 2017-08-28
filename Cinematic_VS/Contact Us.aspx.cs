using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contact_Us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CinematicConnectionString"].ConnectionString);
        try
        {
            con.Open();
                string feed = "insert into Contact_Feedback(Name,Username,Email,Message) values (@name,@uname,@email,@msg)";
                SqlCommand add = new SqlCommand(feed, con);
                add.Parameters.AddWithValue("@name", nameTxtBox.Text);
                add.Parameters.AddWithValue("@uname", userTxtBox.Text);
                add.Parameters.AddWithValue("@email", emailTxtBox.Text);
                add.Parameters.AddWithValue("@msg", msgBox.Text);

                add.ExecuteNonQuery();
                Response.Write("Your Response has been recorded");
                //add page to redirect to or just use response.write to approve the users entry
                Response.Redirect("index.aspx");

            con.Close();
        }
        catch (Exception)
        {
            Response.Write("Please check your input");
        }

    }
}