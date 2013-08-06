<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="Booking.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 113px;
            font-weight:bold;
        }
        .style2
        {
            width: 113px;
            font-weight: bold;
            height: 30px;
        }
        .style3
        {
            height: 30px;
        }
        .style4
        {
            width: 113px;
            font-weight: bold;
            height: 29px;
        }
        .style5
        {
            height: 29px;
        }
        .style6
        {
            width: 113px;
            font-weight: bold;
            height: 73px;
        }
        .style7
        {
            height: 73px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <span style="color: Green; font-size: 14px; font-weight: bold;"><a href="StudentDashboard.aspx">
            Back to Dashboard</a></span>
    </div>
    <div style="margin: 10px 0px;">
        <span style="color: orange; font-size: 22px; font-weight: bold;">Book a tutor</span>
    </div>
    <div>
        <table>
            <tr>
                <td class="style2">
                    Date
                </td>
                <td class="style3">
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Time
                </td>
                <td class="style3">
                    <asp:Label ID="lblTime" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Tutor Name
                </td>
                <td class="style3">
                    <asp:Label ID="lblTutorName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Student Name
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtStudentName" runat="server" Width="200" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtStudentName" Display="Dynamic" ErrorMessage="*" 
                        Font-Bold="True" Font-Size="16pt" ForeColor="Red" ValidationGroup="book"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Course
                </td>
                <td class="style5">
                    <asp:Label ID="lblCourse" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" style="vertical-align:top">
                    Description
                </td>
                <td class="style7">
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Columns="20"
                        Rows="4" Width="200" MaxLength="200"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtDescription" Display="Dynamic" ErrorMessage="*" 
                        Font-Bold="True" Font-Size="16pt" ForeColor="Red" ValidationGroup="book"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                </td>
                <td>
                    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="button button-green"
                        OnClick="btnConfirm_Click" ValidationGroup="book" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="button button-red"
                        OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
