using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sign2 :  System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string fname = Request.Form["fname"];
            string lname = Request.Form["lname"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            string phone = Request.Form["phone"];
            string sports = Request.Form["sports"];
            string agreesToUpdates = Request.Form["agreesToUpdates"];
            string message = Request.Form["message"];
            string age = Request.Form["age"];

            string sql =
         "SELECT * FROM tUsers " +
         "WHERE email = '" + email + "'"; 

            bool userExists = MyAdoHelper.IsExist(sql);
            if (!userExists)
            {
                string sqlInsert =
           "INSERT INTO tUsers VALUES (" +
           "N'" + fname + "'," +
           "N'" + lname + "'," +
           "N'" + email + "'," +
           "N'" + password + "'," +
           "N'" + phone + "'," +
           "N'" + sports + "'," +
           "N'" + agreesToUpdates + "'," +
           "N'" + message + "'," +
           age + ")";
                    
                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
                Response.Redirect("signIn.aspx");
            }
            else
            {
                st = "המשתמש קיים";
            }
        }

    }
}