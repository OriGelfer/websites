<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <style>        
 img.pictures{
 width:180px;
 height:220px
 }   
 </style>
    <center>
    <img class="pictures" src="images/charlote.jpeg" />
    <img class="pictures" src="images/cooper.jpg" />
    <img class="pictures" src="images/iverson.jpg" />
    <br />
    <img class="pictures" src="images/kamaura.jpg" />
    <img class="pictures" src="images/lebron.jpg" />
    <img  class="pictures" src="images/shai2.jpg" />
     <br />
    <img class="pictures" src="images/retro.jpg" />
    <img class="pictures" src="images/steph.jpg" />
    <img class="pictures" src="images/wemby.jpg" />
        </center>
</asp:Content>

