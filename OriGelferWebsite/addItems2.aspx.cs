using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string itemName = Request.Form["itemName"];
            string itemDescription = Request.Form["itemDescription"];
            string itemAmount = Request.Form["itemAmount"];
            string itemPrice = Request.Form["itemPrice"];

            string sqlIns=
                "INSERT INTO tProducts (itemName, itemDescription, itemAmount, itemPrice) VALUES (" +
           "N'" + itemName + "'," +
           "N'" + itemDescription + "'," +
            itemAmount + "," +
            itemPrice +
            ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlIns);
            st = "!פריט נוסף בהצלחה";
        }

    }
}