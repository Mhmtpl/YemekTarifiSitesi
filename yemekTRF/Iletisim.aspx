<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="yemekTRF.Iletisim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	
    <title></title>
	<style type="text/css">
		.menu ul{
  list-style: none;
  margin: 0;
  padding: 0;
}
 
.menu li{
  float: left;
  position: relative;
  width: 100%;
}
 
.menu ul li ul{
  display: none;
}
 
.menu ul li:hover ul{
  display: block;
}
 
.menu ul li a{
  text-decoration: none;
  background: #054d60;
  display: block;
  color: white;
  font-weight: bold;
  font-family: sans-serif;
  text-align: center;
 
 
  padding: 5px;
}
 
.menu ul li ul li a{
  background: #054d60;
  text-align: left;
  padding: 5px;
  border-bottom: 1px solid ;
  font-size: .8em;
}
 
.menu li a:hover{
  background: rgb(248,140,0);
  transition: .5s;
}
 
.menu ul li ul li a:hover{
  padding-left: 15px;
  
}
		.auto-style1 {
			width: 100%;
			height: 407px;
		}
		</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
	<nav class="menu">
  <ul>
  <li><a href="Default.aspx">Ana Sayfa</a></li>
  <li><a href="#">MENU</a>
    <ul>
      <li><a href="Galleri.aspx">Galeri</a></li>
      <li><a href="Listele.aspx">Listele</a></li>
      <li><a href="Hakkimizda.aspx">Hakkimizda</a></li>
    </ul>  
  </li>
 
  <li><a href="#">İletişim</a></li>
  </ul>
</nav> 
        </div>
		 <div>
        	
        </div>
	 <table class="auto-style3">
				 <tr>
					 <td class="auto-style4"> <div class="mapouter"><div class="gmap_canvas"><iframe width="420" height="489" id="gmap_canvas" src="https://maps.google.com/maps?q=istanbul%20esenyurt%20uni&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" class="auto-style3"></iframe><a href="https://www.emojilib.com"></a></div><style>.mapouter{position:relative;text-align:right;height:489px;width:420px;}.gmap_canvas {overflow:hidden;background:none!important;height:489px;width:420px;}
																																																																																																.auto-style2 {
																																																																																														}
																																																																																																.auto-style3 {
																																																																																																	color: #3399FF;
																																																																																																}
																																																																																																.auto-style4 {
																																																																																																	width: 246px;
																																																																																																}
																																																																																																.auto-style5 {
																																																																																																	width: 258px;
																																																																																																}
																																																																																															</style></div>
		</td>
					 <td class="auto-style2"> <span class="auto-style3">İstanbul Esenyurt Üniversitesi İncirtepe Mahallesi,</span><br class="auto-style3" /><span class="auto-style3">Doğan Araslı Blv No:79, 34510 Beylikdüzü Organize Sanayi Bölgesi</span><br class="auto-style3" /><span class="auto-style3">/Esenyurt/Esenyurt/İstanbul ;</span></td>
			<td style="background-color:aquamarine;">
				Bize ulasın
				<table class="auto-style1">
				 <tr >
					 <td >
						 <asp:Label ID="Label1" runat="server" Text="Ad Soyad:" CssClass="auto-style3"></asp:Label>
					 </td>
					 <td class="auto-style5" >
						 <asp:TextBox ID="TextBox1" runat="server" Width="223px" CssClass="auto-style3"></asp:TextBox>
					 </td>
				 </tr>
				 <tr>
					 <td >
						 <asp:Label ID="Label2" runat="server" Text="Mail Adresi:" CssClass="auto-style3"></asp:Label>
					 </td>
					 <td class="auto-style5" >
						 <asp:TextBox ID="TextBox2" runat="server" Width="225px" CssClass="auto-style3"></asp:TextBox>
					 </td>
				 </tr>
				 <tr>
					 <td >
						 <asp:Label ID="Label3" runat="server" Text="Konu Baslık:" CssClass="auto-style3"></asp:Label>
					 </td>
					 <td class="auto-style5" >
						 <asp:TextBox ID="TextBox3" runat="server" Width="225px" CssClass="auto-style3"></asp:TextBox>
					 </td>
				 </tr>
				 <tr>
					 <td >
						 <asp:Label ID="Label4" runat="server" Text="Konu:" CssClass="auto-style3"></asp:Label>
					 </td>
					 <td class="auto-style5" >
						 <asp:TextBox ID="TextBox4" runat="server" Height="96px" TextMode="MultiLine" Width="215px" CssClass="auto-style3"></asp:TextBox>
					 </td>
				 </tr>
				 <tr>
					 <td class="auto-style3" >&nbsp;</td>
					 <td class="auto-style5" >
						 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" CssClass="auto-style3" />
						 <asp:Label ID="Label5" runat="server" CssClass="auto-style3"></asp:Label>
					 </td>
				 </tr>
			 </table>	</td>

					 </tr>
			 </table>
		
			 
		
    </form>
</body>
</html>
