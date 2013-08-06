<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="BookingHistory.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <span style="color: Green; font-size: 14px; font-weight: bold;"><a href="StudentDashboard.aspx">
            Back to Dashboard</a></span>
    </div>
    <div style="margin: 10px 0px;">
        <span style="color: orange; font-size: 22px; font-weight: bold;">Upcoming</span>
    </div>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="gridCurrent" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookingId" DataSourceID="SqlDataSourceCurrent"
                    ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ButtonType="Button"
                           HeaderText="Delete" 
                            ShowCancelButton="False" />
                        <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False"
                            ReadOnly="True" SortExpression="BookingId" Visible="False" />
                        <asp:BoundField DataField="DateOfBooking" DataFormatString="{0:D}" HeaderText="Date"
                            SortExpression="DateOfBooking" />
                        <asp:BoundField DataField="TutorName" HeaderText="Tutor Name" SortExpression="TutorName" />
                        <asp:BoundField DataField="CourseCode" HeaderText="Course Code" SortExpression="CourseCode" />
                        <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName" />
                        <asp:BoundField DataField="TimeOfBooking" HeaderText="Time" SortExpression="TimeOfBooking" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId"
                            Visible="False" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <EmptyDataTemplate>
                        No records available..
                    </EmptyDataTemplate>
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
                <asp:SqlDataSource ID="SqlDataSourceCurrent" runat="server" ConnectionString="<%$ ConnectionStrings:TutorBookingConnectionString %>"
                    DeleteCommand="DELETE FROM [tblBooking] WHERE [BookingId] = @BookingId" SelectCommand="SELECT tblBooking.BookingId, tblBooking.DateOfBooking, tblBooking.TimeOfBooking, tblBooking.Description, tblCourse.CourseCode, tblCourse.Name AS CourseName, tblTutor.Name AS TutorName, tblBooking.StudentId FROM tblBooking INNER JOIN tblCourse ON tblBooking.CourseId = tblCourse.CourseId INNER JOIN tblTutor ON tblBooking.TutorId = tblTutor.TutorId WHERE (tblBooking.StudentId = @StudentId) AND (tblBooking.DateOfBooking >= @DateOfBooking) Order by tblBooking.DateOfBooking">
                    <DeleteParameters>
                        <asp:Parameter Name="BookingId" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:Parameter Name="StudentId" Type="Int32" />
                        <asp:Parameter Name="DateOfBooking" Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div style="margin: 10px 0px;">
        <span style="color: orange; font-size: 22px; font-weight: bold;">History</span>
    </div>
    <div>
        <asp:GridView ID="gridHistory" runat="server" AutoGenerateColumns="False" CellPadding="4"
            DataSourceID="SqlDataSourceHistory" ForeColor="#333333" GridLines="None" AllowPaging="True"
            AllowSorting="True" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="DateOfBooking" DataFormatString="{0:D}" HeaderText="Date"
                    SortExpression="DateOfBooking" />
                <asp:BoundField DataField="TutorName" HeaderText="Tutor Name" SortExpression="TutorName" />
                <asp:BoundField DataField="CourseCode" HeaderText="Course Code" SortExpression="CourseCode" />
                <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName" />
                <asp:BoundField DataField="TimeOfBooking" HeaderText="Time" SortExpression="TimeOfBooking" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId"
                    Visible="False" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <EmptyDataTemplate>
                No records available..
            </EmptyDataTemplate>
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
        <asp:SqlDataSource ID="SqlDataSourceHistory" runat="server" ConnectionString="<%$ ConnectionStrings:TutorBookingConnectionString %>"
            SelectCommand="SELECT tblBooking.DateOfBooking, tblBooking.Description, tblBooking.TimeOfBooking, tblTutor.Name AS TutorName, tblCourse.CourseCode, tblCourse.Name AS CourseName, tblBooking.StudentId FROM tblBooking INNER JOIN tblTutor ON tblBooking.TutorId = tblTutor.TutorId INNER JOIN tblCourse ON tblBooking.CourseId = tblCourse.CourseId WHERE (tblBooking.StudentId = @StudentId) AND (tblBooking.DateOfBooking < @DateOfBooking)  Order by tblBooking.DateOfBooking">
            <SelectParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="DateOfBooking" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
