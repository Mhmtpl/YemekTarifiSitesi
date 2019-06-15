using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using yemekTRF.Appclas;

namespace yemekTRF
{
	public partial class YeniTarif : System.Web.UI.Page
	{
		sqlsinifi snf = new sqlsinifi();

		
		protected void Page_Load(object sender, EventArgs e)
		{

			SqlCommand komut2 = new SqlCommand("Select *From  Kategori", snf.baglanti());
			SqlDataReader dr2 = komut2.ExecuteReader();
			DropDownList1.DataTextField = "kategoriAdi";
			DropDownList1.DataValueField = "kategoriId";
			DropDownList1.DataSource = dr2;
			DropDownList1.DataBind();
			TextBox3.Text = "2019-05-05 10:30:00.000";
		}
		
		protected void TextBox2_TextChanged(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			FileUpload1.SaveAs(Server.MapPath("~/images/makale/" + FileUpload1.FileName));
			SqlCommand komut = new SqlCommand("insert into Tarif (TarifBaslik,TarifIcerik,YayinTarihi,kategoriId,ResimYolu)values (@p1,@p2,@p3,@p4,@p5)",snf.baglanti());
			komut.Parameters.AddWithValue("@p1",TextBox1.Text);
			komut.Parameters.AddWithValue("@p2",TextBox2.Text);
			komut.Parameters.AddWithValue("@p3",TextBox3.Text);
			komut.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);


			komut.Parameters.AddWithValue("@p5", "images/makale/" + FileUpload1.FileName); 

			komut.ExecuteNonQuery();
			snf.baglanti().Close();
			Response.Redirect("Listele.aspx");

		}
	}
}