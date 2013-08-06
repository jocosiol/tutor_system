<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="UpdateStudentProfile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 92px;
            font-weight: bold;
        }
        .style2
        {
            font-weight: bold;
            width: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <span style="color: Green; font-size: 14px; font-weight: bold;"><a href="StudentDashboard.aspx">
            Back to Dashboard</a></span>
    </div>
    <div>
        <div style="float: left; width: 400px;">
            <div style="margin: 10px 0px">
                <span style="color: orange; font-size: 22px; font-weight: bold;">Basic Details</span>
            </div>
            <div>
                <table>
                    <tr>
                        <td class="style1">
                            Student Id
                        </td>
                        <td>
                            <asp:TextBox ID="txtStudentId" runat="server" Width="200px"></asp:TextBox>
                             
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtStudentId" Display="Dynamic" ErrorMessage="*" 
                                Font-Bold="True" Font-Size="16pt" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                             
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*" Font-Bold="True" 
                                Font-Size="16pt" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Address
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" Width="200px" Height="50px" 
                                TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                        </td>
                        <td>
                            <asp:Button ID="btnUpdate" runat="server" class="button button-green" Text="Update"
                                OnClick="btnUpdate_Click" Width="100px" ValidationGroup="a" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div style="float: left; width: 400px;">
            <div style="margin: 10px 0px;">
                <span style="color: orange; font-size: 22px; font-weight: bold;">Credentials Details</span>
            </div>
            <div>
                <table>
                    <tr>
                        <td class="style2">
                            New Password
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="200px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                            Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                            SetFocusOnError="True" ValidationGroup="pass"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                        </td>
                        <td>
                            <asp:Button ID="btnUpdatePassword" runat="server" CssClass="button button-green"
                                Text="Update Password" OnClick="btnUpdatePassword_Click" ValidationGroup="pass" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
