<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="TutorRegistration.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 104px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 300px; float: left; text-align: right">
        <img src="Images/tutorRegister.jpg" style="border-radius: 2em;" />
    </div>
    <div style="width: 550px; float: left; margin-left: 15px;">
        <div style="margin-bottom: 20px;">
            <span style="color: Green; font-size: 22px; font-weight: bold;">New tutor ? Register
                here</span>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
                    <table>
                        <tr>
                            <td class="style1" >
                                <span style="color: orange; font-size: 18px; font-weight: bold;">Basic Details</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Student Id
                            </td>
                            <td>
                                <asp:TextBox ID="txtStudentId" runat="server" Width="200px" MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtStudentId"
                                    Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                                    SetFocusOnError="True" ValidationGroup="register"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Name
                            </td>
                            <td>
                                <asp:TextBox ID="txtName" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                    Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                                    SetFocusOnError="True" ValidationGroup="register"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Email
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail"
                                    Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                                    SetFocusOnError="True" ValidationGroup="register"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Password
                            </td>
                            <td>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword"
                                    Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                                    SetFocusOnError="True" ValidationGroup="register"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <span style="color: orange; font-size: 18px; font-weight: bold;">Select courses</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Course 1
                            </td>
                            <td>
                                <span style="margin-right: 10px;">
                                    <asp:DropDownList ID="cbCourse1" runat="server" AppendDataBoundItems="True" Width="300px">
                                        <asp:ListItem Selected="True" Text="-- select --" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cbCourse1"
                                        Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="register" InitialValue="-- select --"></asp:RequiredFieldValidator>
                                </span><span><b>Grade </b></span><span>
                                    <asp:TextBox ID="txtGrade1" runat="server" Width="50px" MaxLength="2"></asp:TextBox>
                                </span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtGrade1"
                                    Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Size="24px" ForeColor="Red"
                                    SetFocusOnError="True" ValidationGroup="register"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Course 2
                            </td>
                            <td>
                                <span style="margin-right: 10px;">
                                    <asp:DropDownList ID="cbCourse2" runat="server" AppendDataBoundItems="True" Width="300px">
                                        <asp:ListItem Selected="True" Text="-- select --" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </span><span><b>Grade</b> </span><span>
                                    <asp:TextBox ID="txtGrade2" runat="server" Width="50px" MaxLength="2"></asp:TextBox>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Course 3
                            </td>
                            <td>
                                <span style="margin-right: 10px;">
                                    <asp:DropDownList ID="cbCourse3" runat="server" AppendDataBoundItems="True" Width="300px">
                                        <asp:ListItem Selected="True" Text="-- select --" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </span><span><b>Grade </b></span><span>
                                    <asp:TextBox ID="txtGrade3" runat="server" Width="50px" MaxLength="2"></asp:TextBox>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Course 4
                            </td>
                            <td>
                                <span style="margin-right: 10px;">
                                    <asp:DropDownList ID="cbCourse4" runat="server" AppendDataBoundItems="True" Width="300px">
                                        <asp:ListItem Selected="True" Text="-- select --" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </span><span><b>Grade </b></span><span>
                                    <asp:TextBox ID="txtGrade4" runat="server" Width="50px" MaxLength="2"></asp:TextBox>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <span style="color: orange; font-size: 18px; font-weight: bold;">Timetable</span>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="style1">
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
                            <td class="style1">
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
                            <td class="style1">
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
                            <td class="style1">
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
                            <td class="style1">
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
                            <td class="style1">
                            </td>
                            <td>
                                <div style="margin-bottom: 10px;">
                                    <asp:Button ID="btnRegister" runat="server" class="button button-green" Text="Register"
                                        OnClick="btnRegister_Click" ValidationGroup="register" /></div>
                                <div>
                                 <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Error: Enter valid email"
                                        ControlToValidate="txtEmail" Display="Dynamic" Font-Bold="True" ForeColor="Red"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="register"></asp:RegularExpressionValidator>
                                </div>
                                <div>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Error: Enter valid student id"
                                        ControlToValidate="txtStudentId" Display="Dynamic" Font-Bold="True" ForeColor="Red"
                                        ValidationExpression="(D-)?\d{10}" ValidationGroup="register"></asp:RegularExpressionValidator>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
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
        <div>
            <span style="color: Green; font-size: 22px; font-weight: bold;"><a href="LoginTutor.aspx">
                Are you tutor? Login here</a></span>
        </div>
    </div>
</asp:Content>
