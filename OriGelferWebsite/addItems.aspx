<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addItems.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script language="javascript">
     function checkAll() {

         result = true;

         if (!checkName())
             result = false;
         if (!checkDescription())
             result = false;
         if (!checkAmount())
             result = false;
         if (!checkPrice())
             result = false;

         function checkName() {
             name = document.getElementById("itemName").value;
             nameErr.innerHTML = "";
             if (name == "") {
                 nameErr.innerHTML = "חייב להכניס שם פריט*";
                 return false;
             }
             if (name != "חולצה" && name != "גופייה" && name != "מכנס" && name != "גרביים" &&
                 name != "תחתון" && name != "תחתונים" && name != "גרב" && name != "סווטשירט" &&
                 name != "מעיל" && name != "מכנסיים" && name != "הודי" && name != "שורטס" &&
                 name != "טייץ" && name != "נעל" && name != "נעליים" && name != "כפכף" &&
                 name != "כפכפים" && name != "טישרט") {
                 nameErr.innerHTML = "שם פריט לא תקין/פריט לא אמיתי*";
                 return false;
                 }
             return true;
         }

         function checkDescription() {
             description = document.getElementById("itemDescription").value;
             descriptionErr.innerHTML = "";
             if (description == "") {
                 descriptionErr.innerHTML = "חייב להכניס תיאור מוצר*";
                 return false;
             }
             if (description.length < 5) {
                 descriptionErr.innerHTML = "תיאור המוצר קצר מדי*";
                 return false;
             }
             if (description.length > 100) {
                 descriptionErr.innerHTML = "תיאור המוצר ארוך מדי*";
                 return false;
             }
             return true;
         }

         function checkAmount() {
             amount = document.getElementById("itemAmount").value;
             amountErr.innerHTML = "";
             if (amount == "") {
                 amountErr.innerHTML = "יש להכניס כמות*";
                 return false;
             }
             if (amount <= 0) {
                 amountErr.innerHTML = "הכמות חייבת להיות גדולה מאפס*";
                 return false;
             }
             if (amount % 1 != 0) {
                 amountErr.innerHTML = "הכמות חייבת להיות מספר שלם*";
                 return false;
             }
             if (amount > 1000) {
                 amountErr.innerHTML = "הכמות גדולה מדי*";
                 return false;
             }
             return true;
         }

         function checkPrice() {
             price = document.getElementById("itemPrice").value;
             priceErr.innerHTML = "";
             if (price == "") {
                 priceErr.innerHTML = "יש להכניס מחיר*";
                 return false;
             }
             if (price <= 0) {
                 priceErr.innerHTML = "המחיר חייב להיות גדול מאפס*";
                 return false;
             }
             if (price > 100000) {
                 priceErr.innerHTML = "המחיר גבוה מדי*";
                 return false;
             }
             if (price % 1 != 0) {
                 priceErr.innerHTML = "המחיר חייב להיות מספר שלם*";
                 return false;
             }
             return true;
         }


         return result;
     }
     </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <form name="addItemForm" method="post" runat="server" onsubmit="return checkAll();">
    <label for="itemName">:שם הפריט</label><br>
         <span style="color:red" id="nameErr"></span>
<input type="text"  id="itemName" name="itemName" value=""><br>

            <label for="itemDescription">:תיאור הפריט</label><br>
         <span style="color:red" id="descriptionErr"></span>
<input type="text" id="itemDescription" name="itemDescription" value=""><br>

                             <label for="itemAmount">:כמות</label><br>
         <span style="color:red" id="amountErr"></span>
<input type="number" id="itemAmount" name="itemAmount" value=""><br>

                    <label for="itemPrice">:מחיר</label><br>
         <span style="color:red" id="priceErr"></span>
<input type="number" id="itemPrice" name="itemPrice" value=""><br>

         <input type="submit" value="הוסף פריט">
    </form>
    <br/>
      <%=st %> 
</asp:Content>


