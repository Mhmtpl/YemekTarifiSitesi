<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TarifEdit.aspx.cs" Inherits="yemekTRF.TarifEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div style=" width: auto;    height: auto;    padding: 20px;    background-color: #054d60;    position: absolute;    top: 50%;    left: 50%;    margin-left: -300px;    margin-top: -200px; ">
	
		-Yeni Tarif Ekle-
		<table class="auto-style1">
			<tr>
				<td>
					<asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="TarifBasli"></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="TextBox1" runat="server" Width="496px"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Tarif "></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="TextBox4" runat="server" Width="499px" Height="158px" TextMode="MultiLine"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td class="auto-style4">
					<asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="Kategori"></asp:Label>
				</td>
				<td class="auto-style4">
					<asp:DropDownList ID="DropDownList1" runat="server" Height="49px" Width="151px">
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label ID="Label4" runat="server" CssClass="auto-style2" Text="Tarih"></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="TextBox3" runat="server" Width="333px"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label ID="Label5" runat="server" CssClass="auto-style2" Text="Resim Seciniz"></asp:Label>
				</td>
				<td>
					<asp:Image ID="Image1" runat="server" Height="202px" ImageUrl='<%# Eval("ResimYolu") %>' Width="500px" />
					<br />
					<asp:FileUpload ID="FileUpload1" runat="server" Width="341px" />
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Lütfen  ResimSeciniz">*</asp:RequiredFieldValidator>
					</td>
			</tr>
			<tr>
				<td ></td>
				<td >
					<asp:Button ID="Button1" runat="server" Text="Guncelle" OnClick="Button1_Click" />
					<asp:Label ID="Label6" runat="server"></asp:Label>
				</td>
			</tr>
		</table>
	
		</div>
</asp:Content>
