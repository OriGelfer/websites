<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addItems2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <form name="addItemForm" method="post" runat="server">
    <label for="itemName">:שם הפריט</label><br>
<input type="text" name="itemName" value=""><br>
            <label for="itemDescription">:תיאור הפריט</label><br>
<input type="text" name="itemDescription" value=""><br>
                             <label for="itemAmount">:כמות</label><br>
<input type="number" name="itemAmount" value=""><br>
                    <label for="itemPrice">:מחיר</label><br>
<input type="number" name="itemPrice" value=""><br>
         <input type="submit" value="הוסף פריט">
    </form>
    <br/>
      <%=st %> 
</asp:Content>


