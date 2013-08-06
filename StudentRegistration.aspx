<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="StudentRegistration.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 98px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 300px; float: left; text-align: right">
        <img src="Images/studentRegister.jpg" style="border-radius: 2em;" width="270" height="400" />
    </div>
    <div style="width: 550px; float: left; margin-left: 15px;">
        <div style="margin-bottom: 20px;">
            <span style="color: Green; font-size: 22px; font-weight: bold;">New student ? Register
                here</span>
        </div>
        <div>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            
            

            <table>
                <tr>
                    <td class="style1">
                        <b>Student Id</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtStudentId" runat="server" Width="200px" MaxLength="10"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtStudentId"
                            Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                            SetFocusOnError="True" ValidationGroup="register"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <b>Name</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName"
                            Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                            SetFocusOnError="True" ValidationGroup="register"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1" valign="top">
                        <b>Address</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" Width="200px" Height="55px" 
                            TextMode="MultiLine" MaxLength="200"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <b>Email</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
                            Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                            SetFocusOnError="True" ValidationGroup="register"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <b>Password</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px" 
                            MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                            Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                            SetFocusOnError="True" ValidationGroup="register"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                    </td>
                    <td>
                        <div style="margin-bottom: 10px;">
                            <asp:Button ID="btnRegister" runat="server" class="button button-green" Text="Register"
                                OnClick="btnRegister_Click" ValidationGroup="register" />
                        </div>
                        <div>
                         <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1"
                            DisplayAfter="100">
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
                        </div>
                        <div>
                         <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Error: Enter valid email"
                                ControlToValidate="txtEmail" Display="Dynamic" Font-Bold="True" ForeColor="Red"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ValidationGroup="register"></asp:RegularExpressionValidator>

                        </div>
                        <div>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Error: Enter valid student id"
                                ControlToValidate="txtStudentId" Display="Dynamic" Font-Bold="True" ForeColor="Red"
                                ValidationExpression="(D-)?\d{10}" ValidationGroup="register"></asp:RegularExpressionValidator>

                        </div>

                    </td>
                </tr>
            </table>
            </ContentTemplate>

            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
