<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="controller2.aspx.cs" Inherits="controller2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
         <form name="signupForm" method="post" runat="server">
                    <label for="fname">:שם פרטי</label><br>
   <input type="text" id="fname" name="fname" value=""><br>
<label for="lname">:שם משפחה</label><br>
<input type="text" id="lname" name="lname" value=""><br><br>
              <input type="submit" value="Submit">
             </form>

     <center>
    <h1>טבלת משתמשים</h1>
    <%=st %>
    </center>
</asp:Content>
