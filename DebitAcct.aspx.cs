using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Data;

public partial class DebitAcct : System.Web.UI.Page   //Debits a Customer's account with amount from user input.
{

    private SqlConnection con;
    private SqlCommand cmd, cmd2;
    private SqlDataAdapter da;
    private DataTable dt;
    public String Cnum;



    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void CurrBalButton_Click(object sender, EventArgs e)
    {
        ValidateCardNo();
    }



    public void ValidateCardNo()
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Anye1\documents\visual studio 2013\Projects\TailgatingME\TailgatingME\TailgateDB.mdf;Integrated Security=True");
        con.Open();
        cmd = new SqlCommand("Select Card_Number from TransactionT GROUP BY Card_Number ", con);  //Querying database
        da = new SqlDataAdapter(cmd);     //creating data adapter
        dt = new DataTable();             //creating data table 
        da.Fill(dt);                     // filling data table 
        int count = dt.Rows.Count;

        for (int i = 0; i < count; i++)
        {
            if (CardNoTxt.Text == dt.Rows[i]["Card_Number"].ToString().Trim())
            {
                GetBalance();
                i = count + 1;
            }
            else
            {
                Label1.Text = "Invalid Card Number";
            }
        }
        con.Close();

    }



    public void GetBalance()    //Obtains and displays current balance
    {

        Cnum = CardNoTxt.Text;

        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Anye1\documents\visual studio 2013\Projects\TailgatingME\TailgatingME\TailgateDB.mdf;Integrated Security=True");
        con.Open();
        cmd = new SqlCommand("Select * from TransactionT where TransactionT.Card_Number = @CardNumber ORDER BY TransactionID DESC ", con);  //Querying database

        cmd.Parameters.AddWithValue("@CardNumber", Cnum);
        da = new SqlDataAdapter(cmd);     //creating data adapter
        dt = new DataTable();             //creating data table 
        da.Fill(dt);                     // filling data table 
        CurrBalLabel.Text = dt.Rows[0]["Balance"].ToString().Trim();
        con.Close();
    }

    protected void SubmitB_Click(object sender, EventArgs e)
    {
        DebitMoney();
    }


    public void DebitMoney()  //Debit money to customer's account
    {

        Cnum = CardNoTxt.Text;

        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Anye1\documents\visual studio 2013\Projects\TailgatingME\TailgatingME\TailgateDB.mdf;Integrated Security=True");
      

        SqlCommand cmd5 = new SqlCommand("Select Card_Number from TransactionT GROUP BY Card_Number ", con);  //Querying database
        SqlDataAdapter da5 = new SqlDataAdapter(cmd5);     //creating data adapter
        DataTable dt5 = new DataTable();             //creating data table 
        da5.Fill(dt5);                     // filling data table 
        int count = dt5.Rows.Count;

        // The following for loop validated CardNumber
        for (int i = 0; i < count; i++)
        {
            if (CardNoTxt.Text == dt5.Rows[i]["Card_Number"].ToString().Trim())
            {                 

                 cmd = new SqlCommand("Select * from TransactionT where TransactionT.Card_Number = @CardNumber ORDER BY TransactionID DESC", con);  //Querying database

                 cmd.Parameters.AddWithValue("@CardNumber", Cnum);
                 da = new SqlDataAdapter(cmd);     //creating data adapter
                 dt = new DataTable();             //creating data table 
                 da.Fill(dt);                     // filling data table 
                 CurrBalLabel.Text = dt.Rows[0]["Balance"].ToString().Trim();

                 // Create temp holding for fields from previous row

                 String tName = dt.Rows[0]["Name"].ToString().Trim();
                 String tEmail = dt.Rows[0]["Email"].ToString().Trim();
                 String tCardNo = dt.Rows[0]["Card_Number"].ToString().Trim();
                 double Debit = System.Double.Parse(AmtToDebTxt.Text);


                 // Obtaining and updating transaction ID from TransactionT table
                SqlCommand cmd3 = new SqlCommand("Select TransactionID from TransactionT ORDER BY TransactionID DESC", con);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd3);     //creating data adapter
                DataTable dt1 = new DataTable();             //creating data table 
                da1.Fill(dt1);
                String tTransactID = dt1.Rows[0]["TransactionID"].ToString().Trim();
                Int64 tTransactionID = Convert.ToInt64(tTransactID);
                Int64 nTransactionID = tTransactionID + 1;               //Update transaction ID

               //Updating balance
                double tAmtToDeb = System.Double.Parse(AmtToDebTxt.Text);
                double tCurrBal = System.Double.Parse(CurrBalLabel.Text);
                double tBal = tCurrBal - tAmtToDeb;

                //Insert new row (add money) to table
                cmd2 = new SqlCommand("Insert into TransactionT(Card_Number, Name, Email, Credit, Debit, Balance, TransactionID, Date) VALUES (@CardNumber, @Name, @Email, 0, @Debit,  @Balance, @TransactionID, GETDATE()) ", con);
                cmd2.Parameters.AddWithValue("@CardNumber", tCardNo);
                cmd2.Parameters.AddWithValue("@Name", tName);
                cmd2.Parameters.AddWithValue("@Email", tEmail);
                cmd2.Parameters.AddWithValue("@Debit", Debit);
                cmd2.Parameters.AddWithValue("@Balance", tBal);
                cmd2.Parameters.AddWithValue("@TransactionID", nTransactionID);

                //display new balance, confirm update, close connection
                BalanceLabel.Text = tBal.ToString().Trim();

                if (Page.IsPostBack == true)
                {
                    ConfirmSubmit.Text = ("Data submitted successfully!");
                }

                con.Open();
                cmd3.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                con.Close();

                if (IsPostBack)
                {
                    AmtToDebTxt.Text = "";     //Clear input field
                }

                i = count + 1;       //terminate if loop

            } // end of card validation if statement
            else
            {
                Label1.Text = "Invalid Card Number";
            }

        } //end of For loop



    }
}