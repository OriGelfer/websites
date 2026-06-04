<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="sign2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script language="javascript">
       function checkAll() {

           result = true;

           if (!checkFirstName())
               result = false;
           if (!checkLastName())
               result = false;
           if (!checkEmail())
               result = false;
           if (!checkPassword())
               result = false;
           if (!checkImut())
               result = false;
           if (!checkPhone())
               result = false;
           if (!checkAge())
               result = false;
           if (!checkSports())
               result = false;
           if (!checkUpdates())
               result = false;
           return result;
       }


         function checkFirstName() {
             name = document.getElementById("fname").value;
             fnErr.innerHTML = "";
           if (name.length < 2) {
               fnErr.innerHTML = "שם חייב להכיל לפחות שני תווים*";
               return false;
           }
           if (name.length >10) {
               fnErr.innerHTML = "שם ארוך מדי*";
               return false;
           }
               return true;
       }

       function checkLastName() {
           name = document.getElementById("lname").value;
           lnErr.innerHTML = "";
           if (name.length < 2) {
               lnErr.innerHTML = "שם משפחה חייב להכיל לפחות שני תווים*";
               return false;
           }
           if (name.length > 10) {
               lnErr.innerHTML = "שם משפחה ארוך מדי*";
               return false;
           }
           return true;
       }

       function checkEmail() {
           email = document.getElementById("email").value;
           emailErr.innerHTML = "";
           if (!email.includes("@")) {
               emailErr.innerHTML = "@ חסר*";
               return false;
           }
           if (email.includes(" ")) {
               emailErr.innerHTML = "אימייל לא יכול להכיל רווחים*";
               return false;
           }
           if (email.length < 6) {
               emailErr.innerHTML = "אימייל קצר מדי*";
               return false;
           }

           if (email.length > 50) {
               emailErr.innerHTML = "אימייל ארוך מדי*";
               return false;
           }
           return true;
       }

       function checkPassword() {
           password = document.getElementById("password").value;
           passwordErr.innerHTML = "";
           if (password.length < 8) {
               passwordErr.innerHTML = "הסיסמה חייבת להכיל לפחות 8 תווים*";
               return false;
           }
           if (password.length > 20) {
               passwordErr.innerHTML = "הסיסמה ארוכה מדי*";
               return false;
           }
           if (!/[A-Z]/.test(password)) {
               passwordErr.innerHTML = "הסיסמא חייבת להכיל אות גדולה*";
               return false;
           }
           if (!/[a-z]/.test(password)) {
               passwordErr.innerHTML = "הסיסמא חייבת להכיל אות קטנה*";
               return false;
           }
           if (!/[0-9]/.test(password)) {
               passwordErr.innerHTML = "הסיסמא חייבת להכיל מספר*";
               return false;
           }
           if (password.includes(" ")) {
               passwordErr.innerHTML = "הסיסמא לא יכולה להכיל רווחים*";
               return false;
           }
           return true;
       }

       function checkImut() {
           imut = document.getElementById("imut").value;
           imutErr.innerHTML = "";
           password = document.getElementById("password").value;
           if (password != imut) {
               imutErr.innerHTML = "הסיסמאות אינן תואמות*";
               return false;
           }

           return true;
       }

       function checkPhone() {
           phone = document.getElementById("phone").value;
           phoneErr.innerHTML = "";
           if (phone == "") {
               phoneErr.innerHTML = "יש להזין מספר טלפון*";
               return false;
           }
           if (isNaN(phone)) {
               phoneErr.innerHTML = "יש להזין ספרות בלבד*";
               return false;
           }
           if (phone.length != 7) {
               phoneErr.innerHTML = "המספר חייב להכיל 7 ספרות*";
               return false;
           }
           return true;
       }

       function checkAge() {
           age = document.getElementById("age").value;
           ageErr.innerHTML = "";
           if (age == "") {
               ageErr.innerHTML = "יש להזין גיל*";
               return false;
           }
           if (age < 13) {
               ageErr.innerHTML = "גיל משתמש קטן מדי*";
               return false;
           }
           if (age > 120) {
               ageErr.innerHTML = "גיל לא תקין*";
               return false;
           }
           if (age % 1 != 0) {
               ageErr.innerHTML = "יש להזין מספר שלם*";
               return false;
           }
           return true;
       }

       function checkSports() {
           sports = document.getElementsByName("sports");
           sportsErr.innerHTML = "";
           checked = false;
           for (i = 0; i < sports.length; i++) {

               if (sports[i].checked) {
                   checked = true;
               }
           }
           if (!checked) {
               sportsErr.innerHTML = "יש לבחור לפחות ענף אחד*";
               return false;
           }
           return true;
       }

       function checkUpdates() {
           updates = document.getElementsByName("agreesToUpdates");
           updatesErr.innerHTML = "";
           selected = false;
           for (i = 0; i < updates.length; i++) {

               if (updates[i].checked) {
                   selected = true;
               }
           }
           if (!selected) {
               updatesErr.innerHTML = "חייב לבחור אפשרות*";
               return false;
           }
           return result;
       }
   </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server" onsubmit="return checkAll();">
   <h1>טופס הרשמה</h1>
     <form name="signupForm" method="post" runat="server" onsubmit="return checkAll();">

       <label for="fname">:שם פרטי</label><br>
  <span style="color:red" id="fnErr"></span>
         <input type="text" id="fname" name="fname" value=""> <br>

<label for="lname">:שם משפחה</label><br>
         <span style="color:red" id="lnErr"></span>
<input type="text" id="lname" name="lname" value=""> <br><br>

         <label for="email">:אימייל</label><br>
         <span style="color:red" id="emailErr"></span>
<input type="text" id="email" name="email" value=""> <br><br>

         <label for="password">:סיסמא</label><br>
         <span style="color:red" id="passwordErr"></span>
<input type="text" id="password" name="password" value="">  <br><br>

         <label for="imut">:אימות סיסמא</label><br>
          <span style="color:red" id="imutErr"></span>
<input type="text" id="imut" name="imut" value=""> <br><br>

         <label>:מספר טלפון</label><br><br>
         <span style="color:red" id="phoneErr"></span>

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
         <span style="color:red" id="ageErr"></span>
 <input type="number" id="age" name="age"> 

          <p>?איזה ענפי ספורט הכי מעניינים אותך</p>
         <span style="color:red" id="sportsErr"></span> <br/>
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
         <span style="color:red" id="updatesErr"></span> <br/>
  <input type="radio" id="agree" name="agreesToUpdates" value="agree">
  <label for="agree">מסכים</label><br>
  <input type="radio" id="doesntAgree" name="agreesToUpdates" value="doesntAgree">
  <label for="doesntAgree">לא מסכים</label><br>
  
 <p>.תפרט על עצמך</p>
 <textarea name="message" rows="10" cols="30"></textarea><br>
                            
          <input type="submit" value="Submit">
  </form>
       <%=st %>                                                                                                                                     
</asp:Content>


                                