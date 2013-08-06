<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="App_Themes/Slider.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 40px; margin-bottom: 40px; float:left; width:100%">
        <section class="acc_slider">
    <ul>
      <li>
        <img src="https://www.centennialcollege.ca/myc/slider/studentblogger.jpg"  alt="AvnSlider_Slide" width="469" height="293" />
		<div class="slide_title">Centennial</div>
		<div class="slide_textarea">Centennial</div>
      </li>
      <li>
        <img src="https://www.centennialcollege.ca/myc/slider/leadership_passport.jpg"  alt="AvnSlider_Slide" width="469" height="293" />
		<div class="slide_title">Tutor Booking</div>
		<div class="slide_textarea">Centennial College</div>
      </li>
      
      <li>
        <img src="https://www.centennialcollege.ca/myc/slider/MyC-DisabilitySlider4.jpg"  alt="AvnSlider_Slide" width="469" height="293" />
		<div class="slide_title">Tutor Booking</div>
		<div class="slide_textarea">Centennial College</div>
      </li>
       <li>
        <img src="http://www.tstn.ca/images/header.gif"  alt="AvnSlider_Slide" width="469" height="293" />
		<div class="slide_title">Tutor Booking</div>
		<div class="slide_textarea">Centennial College</div>
      </li>  
    </ul>
  </section>
    </div>
</asp:Content>
