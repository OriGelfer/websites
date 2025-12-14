using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AspNet : System.Web.UI.Page
{ public string strKefel;
    protected void Page_Load(object sender, EventArgs e)
         
    {
      
    strKefel = "<table>";
        for (int i = 1; i <= 10; i++)
        {
            strKefel += "<tr>";
            for (int j = 1; j <= 10; j++)
            {
                strKefel += "<td>";
                strKefel += j * i;
                strKefel += "</td>";
            }

            strKefel += "</tr>";
        }
        strKefel += "</table>";

    }
}