<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Listele.aspx.cs" Inherits="yemekTRF.Listele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
		.auto-style1 {
			color: #FFFFFF;
		}
		.auto-style5 {
			width: 100%;
		}
		.auto-style6 {
			width: 713px;
		}
		.auto-style9 {
			width: 35px;
		}
		.auto-style10 {
			margin-left: 720px;
		}
	</style>
	

 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
		<span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<br />
&nbsp;Listeleme  Sayfası
</span>

<div style="float:left; margin-top:50px; width:150px; height:auto; background-color: #054d60; ">
	<strong><span class="auto-style1">Kategoriler</span><br />
	<asp:DataList ID="DataList1" runat="server" CssClass="auto-style1">
		<ItemTemplate>
			<div style=" width:150px; height:auto; ">
			<a href="KtgryDetay.aspx?kategoriId=<%# Eval("kategoriId")%>" onclick="return ShowConfirm()" ><asp:Label ID="Label1" runat="server" Text='<%# Eval("kategoriAdi") %>' CssClass="auto-style1"></asp:Label></a>
		</div>
				</ItemTemplate>
	</asp:DataList>
	</strong>
	</div>
<div style=" width:auto; height:auto;  margin-left:60px;">
	<p class="auto-style10">
	<a href="YeniTarif.aspx" >Yeni Tarif</a>
		
					</p>
		         
					<asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" >
						<ItemTemplate>
							<div style=" width:800px;height:auto; background-color:#054d60;margin-top:20px; margin-left:60px;">
							<table class="auto-style5">
								<tr> 
									<td class="auto-style6">
										<asp:Label ID="Label2" runat="server" CssClass="auto-style1" Text='<%# Eval("TarifBaslik") %>'></asp:Label>
									</td>
									<td class="auto-style9">
										
											<img src="/images/25574-6-delete-button-photos.png" height="25" width="36" onclick="MehmetClick(<%#Eval("TarifId")%>)" />
									</td>
									<td>
									<a href="TarifEdit.aspx?TarifId=<%#Eval("TarifId")%>">	<asp:Image ID="Image1" runat="server"  Height="35px" ImageUrl="~/images/pencil.png" Width="36px" /></a>
									</td>
								</tr>
							</table></div>
						</ItemTemplate>
					</asp:DataList>
				
				<script type="text/javascript">
					function MehmetClick(id) {
						var Tiklandimi = confirm("Eminmisin?");
						if (Tiklandimi == true) {
							window.location.href = "YemekSil.aspx?Yid=" + id;
						}
						else {
							alert("Silme İşlemi İptal Edildi");
						}
						return Tiklandimi;
					}
				</script>
		
		</div>
</div>
	
</asp:Content>
