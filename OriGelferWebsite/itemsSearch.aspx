<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="itemsSearch.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
            
    <form name="itemsSearchForm" method="post" runat="server">
                    <label for="fname">:שם מוצר</label><br>
   <input type="text" id="itemName" name="itemName" value=""><br>
              <input type="submit" value="חיפוש פריט">
             </form>
    
     <center>
    <h1>טבלת מוצרים</h1>
    <%=st %>
    </center>
</asp:Content>

