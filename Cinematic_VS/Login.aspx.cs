using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CinematicConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from User_Account where Username = '" + usernameTextBox.Text + "' and Password = '" + pwdTextBox.Text + "'", con);
        int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        if (count > 0)
        {
            SqlCommand cmdType = new SqlCommand("select UserType from User_Account where Username = '" + usernameTextBox.Text + "'", con);
            string type = cmdType.ExecuteScalar().ToString().Replace(" ", "");
            Session["UserType"] = type;
            if (type == "Admin")
                Response.Redirect("Admin.aspx");
            else if (type == "User")
                Response.Redirect("Movies.aspx");

            //Timeout duration for the session to be active before it is terminated
            Session.Timeout = 15;
            Session["Username"] = usernameTextBox.Text;
            
            

        }
        else
        {
            //Label1.Text = "Please check Username/Password and try again";
            //Label1.ForeColor = System.Drawing.Color.Red;
            Response.Write("Please check Username/Password and try again");
            return;
        }
        con.Close();
    }

    protected void cancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    protected void signUPButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sign Up.aspx");
    }
}