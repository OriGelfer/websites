using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default :  System.Web.UI.Page
{
    public string firstName;
    public string lastName;
    public string fav_team;
    public string fav_player;
    public string message;
    public string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            firstName ="first name:" + Request.Form["fname"];
            lastName ="last name:" + Request.Form["lname"];
            fav_team ="fav team:" + Request.Form["fav_team"];
            fav_player ="fav player:" + Request.Form["fav_player"];
            message ="message:" + Request.Form["message"];
            email = "email:" + Request.Form["email"];
        }  
    }
}