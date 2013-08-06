<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="Course.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 103px;
            font-weight:bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%">
        <div style="float: left; margin-right: 15px">
            <table>
                <tr>
                    <td class="style1">
                        Course Code
                    </td>
                    <td>
                        <asp:TextBox ID="txtCourseCode" runat="server" Width="200"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtCourseCode" ErrorMessage="*" Font-Bold="True" 
                            Font-Size="16pt" ForeColor="Red" ValidationGroup="save"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtCourseName" runat="server" Width="200"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtCourseName" ErrorMessage="*" Font-Bold="True" 
                            Font-Size="16pt" ForeColor="Red" ValidationGroup="save"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                    </td>
                    <td>
                        <asp:Button ID="btnSave" Text="Save" runat="server" 
                            CssClass="button button-green" onclick="btnSave_Click" 
                            ValidationGroup="save" />
                        <asp:Button ID="btnClear" Text="Clear" runat="server" CssClass="button button-red" />
                    </td>
                </tr>
            </table>
        </div>
        <div style="float: left">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
                BorderWidth="1px" CellPadding="4" DataKeyNames="CourseId" DataSourceID="CourseEntity"
                ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ButtonType="Button" />
                    <asp:BoundField DataField="CourseId" HeaderText="CourseId" ReadOnly="True" SortExpression="CourseId"
                        Visible="False" />
                    <asp:BoundField DataField="CourseCode" HeaderText="CourseCode" SortExpression="CourseCode" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:EntityDataSource ID="CourseEntity" runat="server" ConnectionString="name=ModelTutor"
                DefaultContainerName="ModelTutor" EnableDelete="True" EnableFlattening="False"
                EnableInsert="True" EnableUpdate="True" EntitySetName="tblCourses" EntityTypeFilter="tblCourse">
            </asp:EntityDataSource>
        </div>
    </div>
    <div>
    </div>
</asp:Content>
