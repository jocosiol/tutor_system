<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="LoginStudent.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 86px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%; float: left;">
        <center>
            <div style="float: left; margin-right: 15px">
                <img src="Images/student.jpg" height="300" width="450" style="border-radius: 0.5em" />
            </div>
            <div style="float: left;">
                <div style="height: 100px">
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div>
                            <table>
                                <tr>
                                    <td class="style1">
                                    </td>
                                    <td>
                                        <span style="color: Green; font-size: 22px; font-weight: bold;">Student Login</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        Email
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtEmail" runat="server" Width="230"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
                                            Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                                            SetFocusOnError="True" ValidationGroup="login"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        Password
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPassword" runat="server" Width="230" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                                            Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                                            SetFocusOnError="True" ValidationGroup="login"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                    </td>
                                    <td>
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button button-green"
                                            OnClick="btnLogin_Click" ValidationGroup="login" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                    </td>
                                    <td>
                                        <div style="margin-bottom: 10px;">
                                            <span style="color: Green; font-size: 14px; font-weight: bold; margin-bottom: 5px;">
                                                <a href="StudentRegistration.aspx">Become a student</a></span></div>
                                        <div style="margin-bottom: 10px;">
                                            <span style="color: Green; font-size: 14px; font-weight: bold;"><a href="LostPassword.aspx">
                                                Forgot your password?</a></span></div>
                                        <div>
                                            <div>
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Error: Enter valid email"
                                                    ControlToValidate="txtEmail" Display="Dynamic" Font-Bold="True" ForeColor="Red"
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="login"></asp:RegularExpressionValidator>
                                            </div>
                                            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1"
                                                DisplayAfter="10">
                                                <ProgressTemplate>
                                                    <div id="followingBallsG">
                                                        <div id="followingBallsG_1" class="followingBallsG">
                                                        </div>
                                                        <div id="followingBallsG_2" class="followingBallsG">
                                                        </div>
                                                        <div id="followingBallsG_3" class="followingBallsG">
                                                        </div>
                                                        <div id="followingBallsG_4" class="followingBallsG">
                                                        </div>
                                                    </div>
                                                </ProgressTemplate>
                                            </asp:UpdateProgress>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </center>
    </div>
</asp:Content>
