<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="Rating.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 112px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <span style="color: Green; font-size: 14px; font-weight: bold;"><a href="StudentDashboard.aspx">
            Back to Dashboard</a></span>
    </div>
    <div>

        <div style="float: left;">
            <div style="margin: 10px 0px;">
                <span style="color: orange; font-size: 22px; font-weight: bold;">Rate the tutor</span>
            </div>
            <div style="float: left; margin-right: 50px">
                <div>
                    <table>
                        <tr>
                            <td class="style1">
                                <b>Select Tutor</b>
                            </td>
                            <td>
                                <asp:DropDownList ID="cbTutor" runat="server" AppendDataBoundItems="True" Width="200px">
                                    <asp:ListItem Selected="True" Text="-- select tutor --" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <b>Rating</b>
                            </td>
                            <td>
                                <asp:DropDownList ID="cbrate" runat="server" Width="90">
                                    <asp:ListItem>01</asp:ListItem>
                                    <asp:ListItem>02</asp:ListItem>
                                    <asp:ListItem Selected="True">03</asp:ListItem>
                                    <asp:ListItem>04</asp:ListItem>
                                    <asp:ListItem>05</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="btnRate" runat="server" CssClass="button" Text="Rate" OnClick="btnRate_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div style="float: left;">
            <div style="float: left; vertical-align: top;">
                <div style="margin: 10px 0px;">
                    <span style="color: orange; font-size: 22px; font-weight: bold;">Rating</span>
                </div>
                <div>
                    <asp:GridView ID="gridRate" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                        AutoGenerateColumns="False" Width="345px">
                        <AlternatingRowStyle BackColor="White" />
                        <EmptyDataTemplate>
                            No records exist..
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField HeaderText="Tutor Name" DataField="Name" />
                            <asp:BoundField HeaderText="Rating" DataField="Rate" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="green" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
