<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Validation.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <script type="text/javascript">
        function validateForm() {
            // Client-side validation
            var isValid = true;

            // Required field validation
            var requiredFields = ["<%=txtName1.ClientID %>", "<%=txtEmail1.ClientID %>", "<%=txtPassword1.ClientID %>"];
            for (var i = 0; i < requiredFields.length; i++) {
                var field = document.getElementById(requiredFields[i]);
                if (field.value.trim() === "") {
                    alert("Please fill in all required fields.");
                    isValid = false;
                    break;
                }
            }

            // Email format validation
            var emailField = document.getElementById("<%=txtEmail1.ClientID %>");
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(emailField.value)) {
                alert("Please enter a valid email address.");
                isValid = false;
            }

            // Password strength validation
            var passwordField = document.getElementById("<%=txtPassword1.ClientID %>");
            var passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
            if (!passwordRegex.test(passwordField.value)) {
                alert("Password must be at least 8 characters long and contain at least one letter and one number.");
                isValid = false;
            }

            return isValid;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm()">
        <div>
            <label for="txtName">Name:</label>
            <asp:TextBox ID="txtName1" runat="server"></asp:TextBox>
            <br />

            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail1" runat="server"></asp:TextBox>
            <br />

            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"></asp:TextBox>
            <br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
