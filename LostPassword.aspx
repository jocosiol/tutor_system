<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="LostPassword.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 94px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin: 10px 0px;">
        <span style="color: orange; font-size: 22px; font-weight: bold;">Forgot your password</span>
    </div>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table>
                    <tr>
                        <td class="style1">
                            Are you a
                        </td>
                        <td>
                            <asp:DropDownList ID="cbWho" runat="server" Width="210">
                                <asp:ListItem Value="1">Student</asp:ListItem>
                                <asp:ListItem Value="2">Tutor</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Email
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Width="200"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                        </td>
                        <td>
                            <div>
                                <asp:Button ID="btnForget" runat="server" Text="Send email" CssClass="button button-green"
                                    OnClick="btnForget_Click" /></div>
                            <div>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
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
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
