<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../App_Themes/AdminLogin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="login">
                <h2>
                    <span class="fontawesome-lock"></span>Admin Login</h2>
                <fieldset>
                    <p>
                        <label for="email">
                            E-mail address</label></p>
                    <p>
                        <asp:TextBox ID="txtEmail" runat="server" value="mail@address.com" onblur="if(this.value=='')this.value='mail@address.com'"
                            onfocus="if(this.value=='mail@address.com')this.value=''"></asp:TextBox>
                        <!-- JS because of IE support; better: placeholder="mail@address.com" -->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*" 
                            Font-Bold="True" Font-Size="16pt" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
                        <p>
                            <label for="password">
                                Password</label></p>
                        <p>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" value="password"
                                onblur="if(this.value=='')this.value='password'" onfocus="if(this.value=='password')this.value=''"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*" 
                                Font-Bold="True" Font-Size="16pt" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
                        </p>
                        <!-- JS because of IE support; better: placeholder="password" -->
                        <p>
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" 
                                OnClick="btnLogin_Click" ValidationGroup="login" />
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:Label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="Enter valid email" Font-Bold="True" 
                                ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ValidationGroup="login"></asp:RegularExpressionValidator>
                        </p>
                </fieldset>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
