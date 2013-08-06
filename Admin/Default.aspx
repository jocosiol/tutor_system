<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <span>1) To Edit / Add / Delete Course : <a href="Course.aspx" style="font-size: 22px;">
            Courses</a> </span>
        <br />
        <br />
        <span>2) To manage students accounts : <a href="Student.aspx" style="font-size: 22px;">
            Student Edit</a> </span>
        <br />
        <br />
        <span>3) To manage / Approve tutor subjects : <a href="Tutor.aspx" style="font-size: 22px;">
            Tutor Edit</a> </span>
    </div>
</asp:Content>
