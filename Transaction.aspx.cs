using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Transaction : System.Web.UI.Page
{

    private SqlConnection con;
    private SqlCommand cmd;
    private SqlDataAdapter da;
    private DataTable dt;
    public String Cnum;
    public String temp;

 
    protected void Page_Load(object sender, EventArgs e)
    {
     
      ConnectDB();
    }

    
   public void ConnectDB()
     {
         if (PreviousPage != null)
         
         Cnum = PreviousPage.CardNumber;                          //Obtaining card number from previous page
         
        
            con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Anye1\documents\visual studio 2013\Projects\TailgatingME\TailgatingME\TailgateDB.mdf;Integrated Security=True");
            con.Open();
            cmd = new SqlCommand("Select * from CustomerInfo where CustomerInfo.Card_Number = @CardNumber ", con);  //Querying database
                 
            cmd.Parameters.AddWithValue("@CardNumber", Cnum);
            da = new SqlDataAdapter(cmd);     //creating data adapter
            dt = new DataTable();             //creating data table 
            da.Fill(dt);                     // filling data table 
            NameLabel.Text = dt.Rows[0]["Name"].ToString().Trim();  //displaying query result
            CardNoLabel.Text = dt.Rows[0]["Card_Number"].ToString().Trim();
            temp = CardNoLabel.Text;
   }


   public String CardNumber1  //Creates card number parameter to pass to next page.
   {
       get
       {
        
        String  Cnumt = temp;

        return Cnumt;
       }
   }


   
   protected void Button1_Click1(object sender, EventArgs e)
   {
       String Cnumt = CardNoLabel.Text;
   }
}