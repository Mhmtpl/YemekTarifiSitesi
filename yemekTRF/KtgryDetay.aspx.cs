using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yemekTRF.Appclas;

namespace yemekTRF
{
	public partial class KtgryDetay : System.Web.UI.Page
	{
		sqlsinifi snf = new sqlsinifi();
		string skategoriId = "";
		protected void Page_Load(object sender, EventArgs e)
		{
			skategoriId = Request.QueryString["kategoriId"];
			SqlCommand komut = new SqlCommand("Select*From Tarif where kategoriId=@p1", snf.baglanti());
			komut.Parameters.AddWithValue("@p1", skategoriId);
			SqlDataReader dr = komut.ExecuteReader();
			ListView2.DataSource = dr;
			ListView2.DataBind();
			///===========================
			SqlCommand komut2 = new SqlCommand("Select *From Kategori", snf.baglanti());
			SqlDataReader oku = komut2.ExecuteReader();
			DataList2.DataSource = oku;
			DataList2.DataBind();
		}

		protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
		{

		}
	}
}