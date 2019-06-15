<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KtgryDetay.aspx.cs" Inherits="yemekTRF.KtgryDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">

		 .table  
        {  
            border: 1px solid #ccc;  
            border-collapse: collapse;  
            width: 200px;  
			float:left;
        }  
        .table td  
        {  
            padding: 5px;  
            border: 1px solid #ccc;  
        }  
		.auto-style2 {
			color: #FFFFFF;
		}
		.auto-style3 {
			color: #FFFFCC;
		}
		.auto-style4 {
			color: #FFFFFF;
			font-size: smaller;
		}
		.auto-style1 {
			color: #FFFFFF;
		}
		</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div style="float:left; margin-top:50px; width:150px; height:auto; background-color: #054d60; ">
	<strong><span class="auto-style1">Kategoriler</span><br />
	<asp:DataList ID="DataList2" runat="server" CssClass="auto-style1">
		<ItemTemplate>
			<div style=" width:150px; height:auto; ">
			<a href="KtgryDetay.aspx?kategoriId=<%# Eval("kategoriId")%>"><asp:Label ID="Label8" runat="server" Text='<%# Eval("kategoriAdi") %>' CssClass="auto-style1"></asp:Label></a>
		</div>
				</ItemTemplate>
	</asp:DataList>
	</strong>
	</div>
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
	</asp:Content>
