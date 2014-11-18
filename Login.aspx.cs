using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{

    
    
    protected void Page_Load(object sender, EventArgs e)
    {
 //      
    }


    public void ValidatePassword()
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Anye1\documents\visual studio 2013\Projects\TailgatingME\TailgatingME\TailgateDB.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("SELECT * FROM Login", conn);
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        String tUsername = dt.Rows[0]["UserName"].ToString().Trim();
        
        
        Response.BufferOutput = true;

        if (UsernameTxt.Text != tUsername)    //Validating Username
        {
            Label1.Text = "Invalid Username";
        }
        
       if (PasswordTxt.Text != dt.Rows[0]["Password"].ToString().Trim())   //Validating Password
        {
            Label2.Text = "Invalid Password";
        }

       if (UsernameTxt.Text == dt.Rows[0]["UserName"].ToString().Trim()) 
       {
           if   (PasswordTxt.Text == dt.Rows[0]["Password"].ToString().Trim())
              {
                Response.Redirect("http://localhost:58527/Home%20Page.aspx");
              }
        }

         
        
        cmd.ExecuteNonQuery();
        conn.Close();

       if (IsPostBack)
       {
           UsernameTxt.Text = "";
           PasswordTxt.Text = "";
           
       }

     }
    
 


    
    protected void LoginSubmit_Click(object sender, EventArgs e)
    {
       
       ValidatePassword();
    }




    protected void UsernameTxt_TextChanged(object sender, EventArgs e)
    {

    }
}