using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class GetCardNumber : System.Web.UI.Page
{

    private SqlConnection con;
    private SqlCommand cmd;
    private SqlDataAdapter da;
    private DataTable dt;
    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public String CardNumber  //Creates card number parameter to pass to next page.
    {
        get
        {
            return CardNuBox1.Text;
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
      //  ConnectDB();
    }

/*    public void ConnectDB()
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Anye1\documents\visual studio 2013\Projects\TailgatingME\TailgatingME\TailgateDB.mdf;Integrated Security=True");
        con.Open();
        cmd = new SqlCommand("Select * from CustomerInfo where CustomerInfo.Phone = @Telephone ", con);
        cmd.Parameters.AddWithValue("@Telephone", TextBox3.Text);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        Label1.Text = dt.Rows[0]["Name"].ToString().Trim();

    } */


}