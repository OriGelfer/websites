<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="sign2.aspx.cs" Inherits="sign2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <h1>טופס הרשמה</h1>
     <form name="formPage" method="post" runat="server">

       <label for="fname">:שם פרטי</label><br>
   <input type="text" id="fname" name="fname" value=""><br>
<label for="lname">:שם משפחה</label><br>
<input type="text" id="lname" name="lname" value=""><br><br>
         <label for="email">:אימייל</label><br>
<input type="text" id="email" name="email" value=""><br><br>
         <label for="password">:סיסמא</label><br>
<input type="text" id="password" name="password" value=""><br><br>
         <label for="imut">אימות סיסמא:</label><br>
<input type="text" id="imut" name="imut" value=""><br><br>
         <label>:מספר טלפון</label><br><br>

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

          <p>:גיל</p>
 <input type="number">

          <p>?איזה ענפי ספורט הכי מעניינים אותך</p>
 <input type="checkbox" id="basketball" name="sports" value="כדורסל">
 <label for="basketball">כדורסל</label><br>
 <input type="checkbox" id="soccer" name="sports" value="כדורגל">
 <label for="soccer">כדורגל</label><br>
 <input type="checkbox" id="volleyball" name="sports" value="כדורעף">
 <label for="volleyball">כדורעף</label><br>
<input type="checkbox" id="tennis" name="sports" value="טניס">
<label for="tennis">טניס</label><br>
<input type="checkbox" id="running" name="sports" value="ריצה">
<label for="running">ריצה</label><br>
<input type="checkbox" id="other" name="sports" value="אחר">
<label for="other">אחר</label><br>

  <p>?אתה מסכים לקבל עדכונים</p>
  <input type="radio" id="agree" name="agreesToUpdates" value="agree">
  <label for="agree">מסכים</label><br>
  <input type="radio" id="doesntAgree" name="agreesToUpdates" value="doesntAgree">
  <label for="doesntAgree">לא מסכים</label><br>
  
 <p>תפרט על עצמך.</p>
 <textarea name="message" rows="10" cols="30"></textarea><br>

          <input type="submit" value="Submit">
  </form>

</asp:Content>


