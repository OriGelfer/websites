<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="enter2.aspx.cs" Inherits="enter2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h1>כניסה</h1>
             <label for="email">:אימייל</label><br>
<input type="text" id="email" name="email" value=""><br><br>
         <label for="password">:סיסמא</label><br>
<input type="text" id="password" name="password" value=""><br><br>
<input type="submit" value="Submit">
</asp:Content>


