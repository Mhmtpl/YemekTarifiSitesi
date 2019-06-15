<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="yemekTRF.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<style>
.mySlides {display:none}
.w3-left, .w3-right, .w3-badge {cursor:pointer}
.w3-badge {height:13px;width:13px;padding:0}
</style>
	
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div style=" width:100%;  height:auto ;margin-top:70px; ">
		<div class="w3-content w3-display-container" style="max-width:800px">
  <img class="mySlides" src="images/makale/kofteli-corba-tarifi.jpg" style="width:800px ;height:350px"/>
  <img class="mySlides" src="images/makale/limon-sikacaginda-icli-kofte-tarifi.jpg" style="width:800px ;height:350px"/>
  <img class="mySlides" src="images/makale/ozbek.jpg" style="width:800px ;height:350px"/>
  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:800px">
    <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
    <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div>
</div>
</div>
	<div style=" width:100%; margin-top:100px;  height:auto;  margin-left:30px;  ">
	<div style=" width:300px;  height:auto;  margin-left:30px;  " >	
		
		<asp:ListView ID="ListView2" runat="server" GroupItemCount="6">
			
			<EmptyItemTemplate>
<td runat="server" />
			</EmptyItemTemplate>
			<GroupTemplate>
				<tr id="itemPlaceholderContainer" runat="server">
					<td id="itemPlaceholder" runat="server"></td>
				</tr>
			</GroupTemplate>
			
			<ItemTemplate>
				<td runat="server" style="background-color: #054d60;">
					<asp:Image ID="Image1" runat="server" Height="80px" ImageUrl='<%# Eval("ResimYolu") %>' Width="300px" />
					<br />
					<a href='YemekDty.aspx?TarifId=<%#Eval("TarifId")%>'><strong>
					<asp:Label ID="Label1" runat="server" CssClass="auto-style2" style="color: #FFFFFF;" Text='<%# Eval("TarifBaslik") %>'></asp:Label>
					<br />
					<asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text='<%#( Eval("TarifIcerik").ToString().Length > 20) ? ( Eval("TarifIcerik").ToString().Substring(0,20)+
							"</br>.....Daha Fazla Gor") :  Eval("TarifIcerik") %>' style="color: #FFFFFF"></asp:Label>
					<br />
					<span class="auto-style1">Yayin Tarihi</span><em>:<asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text='<%# Eval("YayinTarihi") %>' style="color: #FFFFFF"></asp:Label>
					</td>
			</ItemTemplate>
			<LayoutTemplate>
				<table runat="server">
					<tr runat="server">
						<td runat="server">
							<table id="groupPlaceholderContainer" runat="server" border="0" style="">
								<tr id="groupPlaceholder" runat="server">
								</tr>
							</table>
						</td>
					</tr>
					<tr runat="server">
						<td runat="server" style=""></td>
					</tr>
				</table>
			</LayoutTemplate>
			
		</asp:ListView>


	</div>

	</div>
			<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>
	
</asp:Content>
