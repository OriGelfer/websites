   using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class enter2 :  System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            if (email == "OriAdmin1@gmail.com" && password == "112Admin")
            {
                Session["nihul"] = "ok"; 
                Session["userName"] = "אורי המנהל";
                Response.Redirect("admin.aspx");
            }
            else
            {
                string sql =
             "SELECT * FROM tUsers " +
             "WHERE email = '" + email + "' " +
             "AND password = '" + password + "'";

                System.Data.DataTable dt = MyAdoHelper.ExecuteDataTable(sql);
                if (dt.Rows.Count==0)
                {
                    Session["userName"] ="אורח";
                    st = "אימייל או סיסמה שגויים";
                }
                else
                {
                    Session["user"] = "ok"; 
                    Session["userName"] = dt.Rows[0]["fname"];
                    Response.Redirect("homePage.aspx");
                }

            }


        }


    }
}