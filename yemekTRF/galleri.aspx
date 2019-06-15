<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="galleri.aspx.cs" Inherits="yemekTRF.galleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:ListView ID="ListView2" runat="server" GroupItemCount="8">
			
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
					<a href='<%# Eval("ResimYolu") %>' class="thumbnail">
				<img src="<%# Eval("ResimYolu") %>" width="300" height="150" />
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
