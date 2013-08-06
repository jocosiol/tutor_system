<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="TutorDashboard.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="App_Themes/java.js" type="text/javascript"></script>
    <script>
        $(function () {
            $(".meter > span").each(function () {
                $(this)
					.data("origWidth", $(this).width())
					.width(0)
					.animate({
					    width: $(this).data("origWidth")
					}, 1200);
            });
        });
    </script>
    <style>
		.meter { 
			height: 20px;  /* Can be anything */
			position: relative;
			
			background: #555;
			-moz-border-radius: 25px;
			-webkit-border-radius: 25px;
			border-radius: 25px;
			padding: 6px;
			-webkit-box-shadow: inset 0 -1px 1px rgba(255,255,255,0.3);
			-moz-box-shadow   : inset 0 -1px 1px rgba(255,255,255,0.3);
			box-shadow        : inset 0 -1px 1px rgba(255,255,255,0.3);
		}
		.meter > span {
			display: block;
			height: 100%;
			   -webkit-border-top-right-radius: 8px;
			-webkit-border-bottom-right-radius: 8px;
			       -moz-border-radius-topright: 8px;
			    -moz-border-radius-bottomright: 8px;
			           border-top-right-radius: 8px;
			        border-bottom-right-radius: 8px;
			    -webkit-border-top-left-radius: 20px;
			 -webkit-border-bottom-left-radius: 20px;
			        -moz-border-radius-topleft: 20px;
			     -moz-border-radius-bottomleft: 20px;
			            border-top-left-radius: 20px;
			         border-bottom-left-radius: 20px;
			background-color: rgb(43,194,83);
			background-image: -webkit-gradient(
			  linear,
			  left bottom,
			  left top,
			  color-stop(0, rgb(43,194,83)),
			  color-stop(1, rgb(84,240,84))
			 );
			background-image: -moz-linear-gradient(
			  center bottom,
			  rgb(43,194,83) 37%,
			  rgb(84,240,84) 69%
			 );
			-webkit-box-shadow: 
			  inset 0 2px 9px  rgba(255,255,255,0.3),
			  inset 0 -2px 6px rgba(0,0,0,0.4);
			-moz-box-shadow: 
			  inset 0 2px 9px  rgba(255,255,255,0.3),
			  inset 0 -2px 6px rgba(0,0,0,0.4);
			box-shadow: 
			  inset 0 2px 9px  rgba(255,255,255,0.3),
			  inset 0 -2px 6px rgba(0,0,0,0.4);
			position: relative;
			overflow: hidden;
		}
		.meter > span:after, .animate > span > span {
			content: "";
			position: absolute;
			top: 0; left: 0; bottom: 0; right: 0;
			background-image: 
			   -webkit-gradient(linear, 0 0, 100% 100%, 
			      color-stop(.25, rgba(255, 255, 255, .2)), 
			      color-stop(.25, transparent), color-stop(.5, transparent), 
			      color-stop(.5, rgba(255, 255, 255, .2)), 
			      color-stop(.75, rgba(255, 255, 255, .2)), 
			      color-stop(.75, transparent), to(transparent)
			   );
			background-image: 
				-moz-linear-gradient(
				  -45deg, 
			      rgba(255, 255, 255, .2) 25%, 
			      transparent 25%, 
			      transparent 50%, 
			      rgba(255, 255, 255, .2) 50%, 
			      rgba(255, 255, 255, .2) 75%, 
			      transparent 75%, 
			      transparent
			   );
			z-index: 1;
			-webkit-background-size: 50px 50px;
			-moz-background-size: 50px 50px;
			-webkit-animation: move 2s linear infinite;
			   -webkit-border-top-right-radius: 8px;
			-webkit-border-bottom-right-radius: 8px;
			       -moz-border-radius-topright: 8px;
			    -moz-border-radius-bottomright: 8px;
			           border-top-right-radius: 8px;
			        border-bottom-right-radius: 8px;
			    -webkit-border-top-left-radius: 20px;
			 -webkit-border-bottom-left-radius: 20px;
			        -moz-border-radius-topleft: 20px;
			     -moz-border-radius-bottomleft: 20px;
			            border-top-left-radius: 20px;
			         border-bottom-left-radius: 20px;
			overflow: hidden;
		}
		
		.animate > span:after {
			display: none;
		}
		
		@-webkit-keyframes move {
		    0% {
		       background-position: 0 0;
		    }
		    100% {
		       background-position: 50px 50px;
		    }
		}
		
		.orange > span {
			background-color: #f1a165;
			background-image: -moz-linear-gradient(top, #f1a165, #f36d0a);
			background-image: -webkit-gradient(linear,left top,left bottom,color-stop(0, #f1a165),color-stop(1, #f36d0a));
			background-image: -webkit-linear-gradient(#f1a165, #f36d0a); 
		}
		
		.red > span {
			background-color: #f0a3a3;
			background-image: -moz-linear-gradient(top, #f0a3a3, #f42323);
			background-image: -webkit-gradient(linear,left top,left bottom,color-stop(0, #f0a3a3),color-stop(1, #f42323));
			background-image: -webkit-linear-gradient(#f0a3a3, #f42323);
		}
		
		.nostripes > span > span, .nostripes > span:after {
			-webkit-animation: none;
			background-image: none;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="float: left; width: 100%; border-bottom: 2px solid green; border-radius: 1em;
        padding: 10px; margin-right: 10px; margin-bottom: 20px; padding-bottom: 20px;">
        <div style="float: left; margin-right: 10px; font-size: 18px;">
            <a href="UpdateTutorProfile.aspx">Update profile</a>
        </div>
        <div style="float: right; margin-left: 20px; font-size: 18px;">
            <asp:LinkButton ID="btnLogout" Text="Log out" runat="server" OnClick="btnLogout_Click"></asp:LinkButton>
        </div>
    </div>
    <div style="float: left; width: 100%; margin-bottom: 15px;">
        <div style="float: left" id="divRate" runat="server">
           
        </div>
    </div>
    <div>
        <div style="margin: 10px 0px">
            <span style="color: orange; font-size: 22px; font-weight: bold;">Upcoming Classes</span>
        </div>
        <div>
            <asp:GridView ID="gridCurrent" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceCurrent"
                ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <EmptyDataTemplate>
                    no records exist..
                </EmptyDataTemplate>
                <Columns>
                    <asp:BoundField DataField="DateOfBooking" DataFormatString="{0:D}" HeaderText="Date"
                        SortExpression="DateOfBooking" />
                    <asp:BoundField DataField="TimeOfBooking" HeaderText="Time" SortExpression="TimeOfBooking" />
                    <asp:BoundField DataField="CourseCode" HeaderText="Course Code" SortExpression="CourseCode" />
                    <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName" />
                    <asp:BoundField DataField="StudentName" HeaderText="Student Name" SortExpression="StudentName" />
                    <asp:BoundField DataField="Email" HeaderText="Student Email" SortExpression="Email" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="TutorId" HeaderText="TutorId" SortExpression="TutorId"
                        Visible="False" />
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
            <asp:SqlDataSource ID="SqlDataSourceCurrent" runat="server" ConnectionString="<%$ ConnectionStrings:TutorBookingConnectionString %>"
                SelectCommand="SELECT tblBooking.DateOfBooking, tblBooking.Description, tblBooking.TimeOfBooking, tblCourse.CourseCode, tblCourse.Name AS CourseName, tblStudent.Name AS StudentName, tblStudent.Email, tblBooking.TutorId FROM tblBooking INNER JOIN tblCourse ON tblBooking.CourseId = tblCourse.CourseId INNER JOIN tblStudent ON tblBooking.StudentId = tblStudent.StudentId WHERE (tblBooking.DateOfBooking >= @DateOfBooking) AND (tblBooking.TutorId = @TutorId) Order by tblBooking.DateOfBooking">
                <SelectParameters>
                    <asp:Parameter Name="DateOfBooking" Type="DateTime" />
                    <asp:Parameter Name="TutorId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <div>
        <div style="margin: 10px 0px">
            <span style="color: orange; font-size: 22px; font-weight: bold;">Previous Classes</span>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                DataSourceID="SqlDataSourceHistory" ForeColor="#333333" GridLines="None" AllowPaging="True"
                AllowSorting="True" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <EmptyDataTemplate>
                    no records exist..
                </EmptyDataTemplate>
                <Columns>
                    <asp:BoundField DataField="DateOfBooking" HeaderText="Date" SortExpression="DateOfBooking"
                        DataFormatString="{0:D}" />
                    <asp:BoundField DataField="CourseCode" HeaderText="CourseCode" SortExpression="CourseCode" />
                    <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                    <asp:BoundField DataField="TimeOfBooking" HeaderText="Time" SortExpression="TimeOfBooking" />
                    <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="TutorId" HeaderText="TutorId" SortExpression="TutorId"
                        Visible="False" />
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
            <asp:SqlDataSource ID="SqlDataSourceHistory" runat="server" ConnectionString="<%$ ConnectionStrings:TutorBookingConnectionString %>"
                SelectCommand="SELECT tblBooking.DateOfBooking, tblBooking.Description, tblBooking.TimeOfBooking, tblCourse.CourseCode, tblCourse.Name AS CourseName, tblStudent.Name AS StudentName, tblStudent.Email, tblBooking.TutorId FROM tblBooking INNER JOIN tblCourse ON tblBooking.CourseId = tblCourse.CourseId INNER JOIN tblStudent ON tblBooking.StudentId = tblStudent.StudentId WHERE (tblBooking.DateOfBooking &lt; @DateOfBooking) AND (tblBooking.TutorId = @TutorId) ORDER BY tblBooking.DateOfBooking">
                <SelectParameters>
                    <asp:Parameter Name="DateOfBooking" Type="DateTime" />
                    <asp:Parameter Name="TutorId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
