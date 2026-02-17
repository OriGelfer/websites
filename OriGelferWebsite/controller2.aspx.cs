using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class controller2 :  System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string fname = Request.Form["fname"];
            string lname = Request.Form["lname"];

            string sqlSelect = "SELECT * FROM tUsers WHERE " +
             "fname = N'" + fname + "' AND " +
             "lname = N'" + lname + "'";

            DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

            if (dt.Rows.Count == 0)
            {
                st = "אין נתונים";
            }
            else
            {
                st += "<table border='1'>";
                st += "<tr>";
                st += "<th>שם פרטי</th>";
                st += "<th>שם משפחה</th>";
                st += "<th>אימייל</th>";
                st += "<th>סיסמא</th>";
                st += "<th>מספר טלפון</th>";
                st += "<th>ענפי ספורט</th>";
                st += "<th>?מסכים לעדכונים</th>";
                st += "<th>הודעה</th>";
                st += "<th>גיל</th>";
                st += "</tr>";


                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    st += "<tr>";
                    for (int j = 0; j < dt.Columns.Count; j++)
                    {
                        st += "<td>";
                        st += dt.Rows[i][j];
                        st += "</td>";
                    }

                    st += "</tr>";
                }
                st += "</table>";
            }
        }

    }
}
