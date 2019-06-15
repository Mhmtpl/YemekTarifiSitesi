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
	public partial class TarifEdit : System.Web.UI.Page
	{sqlsinifi bgl = new sqlsinifi();
		string sid;
		protected void Page_Load(object sender, EventArgs e)
		{
			
			sid = Request.QueryString["TarifId"];
			if (Page.IsPostBack==false)
			{
				SqlCommand komut = new SqlCommand("Select *From Tarif where TarifId=@p1", bgl.baglanti());
				komut.Parameters.AddWithValue("@p1",sid);
				SqlDataReader dr = komut.ExecuteReader();
				while (dr.Read())
				{
					TextBox1.Text = dr[1].ToString();
					TextBox4.Text = dr[2].ToString();
					TextBox3.Text= dr[3].ToString();
					Image1.ImageUrl = dr[5].ToString();
					
				}
			}
			SqlCommand komut2 = new SqlCommand("Select *From  Kategori", bgl.baglanti());
			SqlDataReader dr2 = komut2.ExecuteReader();
			DropDownList1.DataTextField = "kategoriAdi";
			DropDownList1.DataValueField = "kategoriId";
			DropDownList1.DataSource = dr2;
			DropDownList1.DataBind();
		}

		protected void Button1_Click(object sender, EventArgs e)
		{ FileUpload1.SaveAs(Server.MapPath("~/images/makale/" + FileUpload1.FileName));
			SqlCommand komut = new SqlCommand("Update Tarif set TarifBaslik=@p1,TarifIcerik=@p2,YayinTarihi=@p3,kategoriId=@p4,ResimYolu=@p5 where TarifId=@p6", bgl.baglanti());
			komut.Parameters.AddWithValue("@p1", TextBox1.Text);
			komut.Parameters.AddWithValue("@p2", TextBox4.Text);
			komut.Parameters.AddWithValue("@p3", TextBox3.Text);
			komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
			
			komut.Parameters.AddWithValue("@p6", sid);

			komut.Parameters.AddWithValue("@p5","images/makale/" + FileUpload1.FileName);

			komut.ExecuteNonQuery();
			bgl.baglanti().Close();
			Label1.Text = "Dosya yüklendi.";
		}
	}
}