<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="UpdateTutorProfile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 104px;
            font-weight: bold;
        }
        .style2
        {
            width: 121px;
            font-weight: bold;
        }
        .style3
        {
            font-weight: bold;
            width: 65px;
        }
        .style4
        {
            font-weight: bold;
            width: 80px;
        }
        .style5
        {
            width: 344px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="float: left; width: 100%;">
        <span style="color: Green; font-size: 14px; font-weight: bold;"><a href="TutorDashboard.aspx">
            Back to Dashboard</a></span>
    </div>
    <div style="float: left; width: 100%;">
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtStudentId" Display="Dynamic" ErrorMessage="*" 
                                Font-Bold="True" Font-Size="16pt" ForeColor="Red" ValidationGroup="basic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*" Font-Bold="True" 
                                Font-Size="16pt" ForeColor="Red" ValidationGroup="basic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                        </td>
                        <td>
                            <asp:Button ID="btnUpdateTutor" runat="server" class="button button-green" Text="Update Details"
                                OnClick="btnUpdateTutor_Click" ValidationGroup="basic" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div style="float: left; width: 400px;">
            <div style="margin: 10px 0px">
                <span style="color: orange; font-size: 22px; font-weight: bold;">Credentials</span>
            </div>
            <div>
                <table>
                    <tr>
                        <td class="style2">
                            New Password
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*" 
                                Font-Bold="True" Font-Size="16pt" ForeColor="Red" ValidationGroup="pass"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                        </td>
                        <td>
                            <asp:Button ID="btnUpdatePassword" runat="server" class="button button-green" Text="Change Password"
                                OnClick="btnUpdatePassword_Click" ValidationGroup="pass" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div style="float: left; width: 100%;">
        <div style="float: left; width: 420px;">
            <div style="margin: 10px 0px">
                <span style="color: orange; font-size: 22px; font-weight: bold;">Add new courses</span>
            </div>
            <div>
                <table>
                    <tr>
                        <td class="style3">
                            Course 1
                        </td>
                        <td class="style5">
                            <span style="margin-right: 10px;">
                                <asp:DropDownList ID="cbCourse1" runat="server" AppendDataBoundItems="True" Width="200px">
                                    <asp:ListItem Selected="True" Text="-- select --" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="cbCourse1" Display="Dynamic" ErrorMessage="*" 
                                Font-Bold="True" Font-Size="16pt" ForeColor="Red" InitialValue="-- select --" 
                                ValidationGroup="grade"></asp:RequiredFieldValidator>
                            </span><span><b>Grade </b></span><span>
                                <asp:TextBox ID="txtGrade1" runat="server" Width="50px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtGrade1" Display="Dynamic" ErrorMessage="*" 
                                Font-Bold="True" Font-Size="16pt" ForeColor="Red" ValidationGroup="grade"></asp:RequiredFieldValidator>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Course 2
                        </td>
                        <td class="style5">
                            <span style="margin-right: 10px;">
                                <asp:DropDownList ID="cbCourse2" runat="server" AppendDataBoundItems="True" Width="200px">
                                    <asp:ListItem Selected="True" Text="-- select --" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                         </span><span><b>Grade </b></span><span>
                                <asp:TextBox ID="txtGrade2" runat="server" Width="50px"></asp:TextBox>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Course 3
                        </td>
                        <td class="style5">
                            <span style="margin-right: 10px;">
                                <asp:DropDownList ID="cbCourse3" runat="server" AppendDataBoundItems="True" Width="200px">
                                    <asp:ListItem Selected="True" Text="-- select --" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                          </span><span><b>Grade </b></span><span>
                                <asp:TextBox ID="txtGrade3" runat="server" Width="50px"></asp:TextBox>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Course 4
                        </td>
                        <td class="style5">
                            <span style="margin-right: 10px;">
                                <asp:DropDownList ID="cbCourse4" runat="server" AppendDataBoundItems="True" Width="200px">
                                    <asp:ListItem Selected="True" Text="-- select --" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            </span><span><b>Grade </b></span><span>
                                <asp:TextBox ID="txtGrade4" runat="server" Width="50px"></asp:TextBox>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                        </td>
                        <td class="style5">
                            <asp:Button ID="btnAddCourse" runat="server" class="button button-green" Text="Add Course"
                                OnClick="btnAddCourse_Click" ValidationGroup="grade" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div style="float: left; width: 400px;">
            <div style="margin: 10px 0px">
                <span style="color: orange; font-size: 22px; font-weight: bold;">Registered courses</span>
            </div>
            <div>
                <asp:GridView ID="gridCourses" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TutorCourseId" DataSourceID="SqlDataSourceCourses"
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" HeaderText="Delete" 
                            ShowDeleteButton="True" />
                        <asp:BoundField DataField="TutorCourseId" HeaderText="TutorCourseId" InsertVisible="False"
                            ReadOnly="True" SortExpression="TutorCourseId" Visible="False" />
                        <asp:BoundField DataField="TutorId" HeaderText="TutorId" 
                            SortExpression="TutorId" Visible="False" />
                        <asp:BoundField DataField="CourseCode" HeaderText="Course Code" 
                            SortExpression="CourseCode" />
                        <asp:BoundField DataField="Name" HeaderText="Course Name" 
                            SortExpression="Name" />
                        <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                        <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <EmptyDataTemplate>
                        No courses registred..
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
                <asp:SqlDataSource ID="SqlDataSourceCourses" runat="server" ConnectionString="<%$ ConnectionStrings:TutorBookingConnectionString %>"
                    DeleteCommand="DELETE FROM [tblTutorCourse] WHERE [TutorCourseId] = @TutorCourseId"
                    SelectCommand="SELECT tblTutorCourse.TutorCourseId, tblTutorCourse.TutorId, tblTutorCourse.Grade, tblTutorCourse.Active, tblCourse.CourseCode, tblCourse.Name FROM tblTutorCourse INNER JOIN tblCourse ON tblTutorCourse.CourseId = tblCourse.CourseId WHERE (tblTutorCourse.TutorId = @TutorId)">
                    <DeleteParameters>
                        <asp:Parameter Name="TutorCourseId" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:Parameter Name="TutorId" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    <div style="float: left; width: 100%;">
        <div style="margin: 10px 0px">
            <span style="color: orange; font-size: 22px; font-weight: bold;">Timetable</span>
        </div>
        <div>
            <table>
                <tr>
                    <td class="style4">
                        Monday
                    </td>
                    <td>
                        <asp:DropDownList ID="cbMonStart" runat="server">
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                        </asp:DropDownList>
                        to
                        <asp:DropDownList ID="cbMonEnd" runat="server">
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Tuesday
                    </td>
                    <td>
                        <asp:DropDownList ID="cbTueStart" runat="server">
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                        </asp:DropDownList>
                        to
                        <asp:DropDownList ID="cbTueEnd" runat="server">
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Wednesday
                    </td>
                    <td>
                        <asp:DropDownList ID="cbWedStart" runat="server">
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                        </asp:DropDownList>
                        to
                        <asp:DropDownList ID="cbWedEnd" runat="server">
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Thursday
                    </td>
                    <td>
                        <asp:DropDownList ID="cbThurStart" runat="server">
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                        </asp:DropDownList>
                        to
                        <asp:DropDownList ID="cbThurEnd" runat="server">
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Friday
                    </td>
                    <td>
                        <asp:DropDownList ID="cbFriStart" runat="server">
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                        </asp:DropDownList>
                        to
                        <asp:DropDownList ID="cbFriEnd" runat="server">
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                    </td>
                    <td>
                        <asp:Button ID="btnUpdateTime" runat="server" class="button button-green" Text="Update Time"
                            OnClick="btnUpdateTime_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
