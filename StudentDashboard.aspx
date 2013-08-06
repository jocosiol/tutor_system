<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="StudentDashboard.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="App_Themes/Loader.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .spanMain
        {
            padding: 5px 10px;
            text-align: center;
            min-width: 200px;
            width: auto;
            float: left;
            color: green;
            margin-right: 5px;
            font-weight: bold;
        }
        .span
        {
            background: #B0B0B0;
            padding: 4px 8px;
            text-align: center;
            min-width: 45px;
            width: auto;
            float: left;
            min-height: 18px;
        }
        .header
        {
            background: green;
            color: White;
            font-weight: bold;
        }
        .red
        {
            background: lightcoral;
        }
        .green
        {
            background: lightgreen;
        }
        .blue
        {
            background: lightskyblue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="float: left; width: 100%; border-bottom: 2px solid green; border-radius: 1em;
        padding: 10px; margin-right: 10px; margin-bottom: 20px; padding-bottom: 20px;">
        <div style="float: left; margin-right: 30px; font-size: 18px;">
            <a href="UpdateStudentProfile.aspx">Update profile</a>
        </div>
        <div style="float: left; margin-right: 30px; font-size: 18px;">
            <a href="BookingHistory.aspx">Booking History</a>
        </div>
        <div style="float: left; margin-right: 30px; font-size: 18px;">
            <a href="Rating.aspx">Rate the tutor</a>
        </div>
        <div style="float: right; margin-left: 20px; font-size: 18px;">
            <asp:LinkButton ID="btnLogout" Text="Log out" runat="server" OnClick="btnLogout_Click"></asp:LinkButton>
        </div>
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div style="display: block; float: left; width: 100%">
                <div>
                    <table>
                        <tr>
                            <td>
                                <b>Select Course</b>
                            </td>
                            <td>
                                <asp:DropDownList ID="cbCourse" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                    OnSelectedIndexChanged="cbCourse_SelectedIndexChanged" Width="300px">
                                    <asp:ListItem Selected="True" Text="-- select course --" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </div>
                <div>
                    <div id="divNotifocation" runat="server" visible="false" style="font-weight: bold;
                        color: lightsalmon; font-size: 18px; margin-top: 5px;">
                        Tutor not available for this course.
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
                    <div id="contentDiv" runat="server" style="float: left;">
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
