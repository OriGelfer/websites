using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            string itemName = Request.Form["itemName"];
            

            string sqlSelect = "SELECT * FROM tProducts WHERE " +
             "itemName LIKE N'%" + itemName + "%'";

            DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

            if (dt.Rows.Count == 0)
            {
                st = "אין נתונים";
            }
            else
            {
                st += "<table border='1'>";
                st += "<tr>";
                st += "<th>שם המוצר</th>";
                st += "<th>תיאור המוצר</th>";
                st += "<th>כמות</th>";
                st += "<th>מחיר</th>";
                st += "</tr>";


                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    st += "<tr>";
                    for (int j = 1; j < dt.Columns.Count; j++)
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