<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <form action="/action_page.php">
            <label for="fname">First name:</label><br>
            <input type="text" id="fname" name="fname" value=""><br>
            <label for="lname">email:</label><br>
            <input type="text" id="lname" name="lname" value=""><br><br>

            <label>מספר הטלפון שלך:</label><br><br>

            <select id="prefix">
                <option value="050">050</option>
                <option value="051">051</option>
                <option value="052">052</option>
                <option value="053">053</option>
                <option value="054">054</option>
                <option value="055">055</option>
                <option value="056">056</option>
                <option value="057">057</option>
                <option value="058">058</option>
                <option value="059">059</option>
            </select>

            <input type="text" id="phone" name="phone" maxlength="7" size="7">

            <p>age</p>
            <input type="number">

            <p>?אתה אוהד הפועל?</p>
            <input type="radio" id="הפועל" name="fav_team value=כן">
            <label for="הפועל">כן</label><br>
            <input type="radio" id="מכבי" name="fav_team" value=לא">
            <label for="מכבי">לא</label><br>


            </br>
            <p>מי השחקן המועדף עליך מבין שלושתם</p>
            <input type="radio" id="LM" name="fav_player" value="מסי">
            <label for="מסי">מסי</label><br>
            <input type="radio" id="CR7" name="fav_player" value="רונאלדו">
            <label for="רונאלדו">רונאלדו</label><br>
            <input type="radio" id="NJ" name="fav_player" value="ניימאר">
            <label for="ניימאר">ניימאר</label>

            <p>תפרט על עצמך.</p>


            <textarea name="message" rows="10" cols="30"></textarea>
            <br><br>
            <input type="submit" value="Submit">
</asp:Content>

