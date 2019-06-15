<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="YeniTarif.aspx.cs" Inherits="yemekTRF.YeniTarif" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
	.auto-style1 {
		width: 100%;
	}
	.auto-style2 {
		color: #FFFFFF;
	}
	.auto-style3 {
		color: #003399;
	}
		.auto-style4 {
			height: 32px;
		}
		.auto-style5 {
			height: 23px;
		}
	</style>
	

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div style=" width: auto;    height: auto;    padding: 20px;    background-color: #054d60;    position: absolute;    top: 50%;    left: 50%;    margin-left: -300px;    margin-top: -200px; ">
	
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">-Yeni Tarif Ekle-</span>
		<table class="auto-style1">
			<tr>
				<td>
					<asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="TarifBasli"></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="TextBox1" runat="server" Width="397px"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Tarif "></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="TextBox2" runat="server" Height="105px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine" Width="405px"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td class="auto-style4">
					<asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="Kategori"></asp:Label>
				</td>
				<td class="auto-style4">
					<asp:DropDownList ID="DropDownList1" runat="server" Height="68px" Width="117px">
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label ID="Label4" runat="server" CssClass="auto-style2" Text="Tarih"></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="TextBox3" runat="server" Width="147px" TextMode="DateTime"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label ID="Label5" runat="server" CssClass="auto-style2" Text="Resim Seciniz"></asp:Label>
				</td>
				<td>
					<asp:FileUpload ID="FileUpload1" runat="server" />
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="lütfen  resim seciniz">*</asp:RequiredFieldValidator>
					</td>
			</tr>
			<tr>
				<td class="auto-style5"></td>
				<td class="auto-style5">
					<asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="Ekle" />
				</td>
			</tr>
		</table>
	
		</div>
</asp:Content>
