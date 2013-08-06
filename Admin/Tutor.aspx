<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="Tutor.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="float: left; width: 100%">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
            BorderWidth="1px" CellPadding="4" DataKeyNames="TutorId" DataSourceID="TutorEntity"
            ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand"
            Width="100%">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True"
                    ShowSelectButton="True" />
                <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
                <asp:BoundField DataField="TutorId" HeaderText="Id" ReadOnly="True" SortExpression="TutorId" />
                <asp:BoundField DataField="Id" HeaderText="Student Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"
                    Visible="False" />
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
        <asp:EntityDataSource ID="TutorEntity" runat="server" ConnectionString="name=ModelTutor"
            DefaultContainerName="ModelTutor" EnableDelete="True" EnableFlattening="False"
            EnableInsert="True" EnableUpdate="True" EntitySetName="tblTutors">
        </asp:EntityDataSource>
    </div>
    <div style="margin-top: 15px; font-size: 22px; float: left; width: 100%">
        Tutor Courses
    </div>
    <div style="float: left; width: 100%; margin-top: 15px; margin-bottom: 10px;">
        <asp:GridView ID="gridCourse" runat="server" AutoGenerateColumns="False" DataKeyNames="TutorCourseId"
            DataSourceID="TutorCourseDataSet" AllowPaging="True" AllowSorting="True" BackColor="White"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black"
            GridLines="Horizontal" Width="100%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
                <asp:BoundField DataField="TutorCourseId" HeaderText="TutorCourseId" InsertVisible="False"
                    ReadOnly="True" SortExpression="TutorCourseId" Visible="False" />
                <asp:BoundField DataField="TutorId" HeaderText="TutorId" SortExpression="TutorId"
                    Visible="False" />
                <asp:BoundField DataField="CourseId" HeaderText="CourseId" SortExpression="CourseId"
                    Visible="False" />
                <asp:BoundField DataField="CourseCode" HeaderText="Course Code" SortExpression="CourseCode"
                    ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" ReadOnly="True" />
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
        <asp:SqlDataSource ID="TutorCourseDataSet" runat="server" ConnectionString="<%$ ConnectionStrings:TutorBookingConnectionString %>"
            DeleteCommand="DELETE FROM [tblTutorCourse] WHERE [TutorCourseId] = @TutorCourseId"
            SelectCommand="SELECT tblTutorCourse.TutorCourseId, tblTutorCourse.TutorId, tblTutorCourse.CourseId, tblTutorCourse.Grade, tblTutorCourse.Active, tblCourse.CourseCode, tblTutor.Name FROM tblTutorCourse INNER JOIN tblCourse ON tblTutorCourse.CourseId = tblCourse.CourseId INNER JOIN tblTutor ON tblTutorCourse.TutorId = tblTutor.TutorId WHERE (tblTutorCourse.TutorId = @TutorId)"
            UpdateCommand="UPDATE [tblTutorCourse] SET [Active] = @Active WHERE [TutorCourseId] = @TutorCourseId">
            <DeleteParameters>
                <asp:Parameter Name="TutorCourseId" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:Parameter Name="TutorId" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Active" Type="Boolean" />
                <asp:Parameter Name="TutorCourseId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
