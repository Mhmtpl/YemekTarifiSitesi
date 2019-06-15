<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="YemekDty.aspx.cs" Inherits="yemekTRF.YemekDty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
		.auto-style1 {
			color: #FFFFFF;
		}
		.auto-style2 {
			color: #000000;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div style=" width: 600px;    height: auto;    padding: 20px;    background-color: #054d60;    position: absolute;    top: 50%;    left: 50%;    margin-left: -300px;    margin-top: -200px; ">
		<div style=" width:100%; height:auto; ">
	<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
		<div style=" width:100%; height:auto;">
			<asp:Image ID="Image2" runat="server" Height="244px"  Width="597px" />
			
	</div>
		
	
	<div style=" width:100%; height:auto;">
	<asp:Label ID="Label2" runat="server" Text="Label" style="text-align:justify;" ></asp:Label></div>
		<div style=" background-color:darkcyan; width:100%; height:auto;">
			<span class="auto-style1">yayin Tarihi (</span><em><asp:Label ID="Label3" runat="server" CssClass="auto-style2"></asp:Label></em><span class="auto-style1">)</span></div>
	</div>
</asp:Content>
