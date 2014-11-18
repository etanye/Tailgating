using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class CreateAccount : System.Web.UI.Page
//Accepts user input and creates records in two tables, CustomerInfo and TransactionT
{
    public String Cnum;
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {
            ConfirmSubmit.Text = ("Data submitted successfully!");
        }
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        InsertRecord();
    } 


    public void InsertRecord()
    {
    
     SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Anye1\documents\visual studio 2013\Projects\TailgatingME\TailgatingME\TailgateDB.mdf;Integrated Security=True");

                 
            //Adding data to database table CustomerInfo
            SqlCommand seed = new SqlCommand("INSERT INTO CustomerInfo(Name, Address, City, State, Zip, Phone, Email, Card_Number, Date) VALUES (@Name, @Address, @City, @State, @Zip, @Phone, @Email, @CardNumber, GETDATE())", conn);
                  seed.Parameters.AddWithValue("@Name", cName.Text);
                  seed.Parameters.AddWithValue("@Address", cAddress.Text);
                  seed.Parameters.AddWithValue("@City", cCity.Text);
                  seed.Parameters.AddWithValue("@State", cZip.Text);
                  seed.Parameters.AddWithValue("@Zip", cZip.Text);
                  seed.Parameters.AddWithValue("@Phone", cPhone.Text);
                  seed.Parameters.AddWithValue("@Email", cEmail.Text);
                  seed.Parameters.AddWithValue("@CardNumber", cCard.Text);

                      
            // Obtaining and updating transaction ID from TransactionT table
            SqlCommand  seed1 = new SqlCommand("Select TransactionID from TransactionT ORDER BY TransactionID DESC", conn);
                 seed1.Parameters.AddWithValue("@Card", cCard.Text);
                
            SqlDataAdapter da = new SqlDataAdapter(seed1);     //creating data adapter
            DataTable  dt = new DataTable();             //creating data table 
            da.Fill(dt);
            String tTransactID = dt.Rows[0]["TransactionID"].ToString().Trim();
            Int64 tTransactionID = Convert.ToInt64(tTransactID);
            Int64 nTransactionID = tTransactionID + 1;

            // Inserting new record into table TransactionT
            SqlCommand seed2 = new SqlCommand("INSERT INTO TransactionT (Card_Number, Name, Email, Credit, Debit, Balance, TransactionID, Date) VALUES (@CardNumber, @Name, @Email, 0, 0, 0, @TransactionID, GETDATE())", conn);
                 seed2.Parameters.AddWithValue("@Name", cName.Text);
                 seed2.Parameters.AddWithValue("@CardNumber", cCard.Text);
                 seed2.Parameters.AddWithValue("@Email", cEmail.Text);
                 seed2.Parameters.AddWithValue("@TransactionID", nTransactionID);

           //Establishing connection with database, executing sql commands, closing database
            conn.Open();
            seed.ExecuteNonQuery();
            seed1.ExecuteNonQuery();
            seed2.ExecuteNonQuery();
            conn.Close();

            if (IsPostBack)
            {
                cName.Text = "";
                cAddress.Text = "";
                cCity.Text = "";
                cState.Text = "";
                cZip.Text = "";
                cPhone.Text = "";
                cEmail.Text = "";
                cCard.Text = "";
            }
    }

    protected void cState_TextChanged(object sender, EventArgs e)
    {

    }


    protected void cPhone_TextChanged(object sender, EventArgs e)
    {

    }
}