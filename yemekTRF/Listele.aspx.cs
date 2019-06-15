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
	public partial class Listele : System.Web.UI.Page
	{
		sqlsinifi bgl = new sqlsinifi();
		
		
		protected void Page_Load(object sender, EventArgs e)
		{
			
			SqlCommand komut = new SqlCommand("Select *From Kategori", bgl.baglanti());
			SqlDataReader oku = komut.ExecuteReader();
			DataList1.DataSource = oku;
			DataList1.DataBind();
			SqlCommand komut1 = new SqlCommand(" Select * From Tarif", bgl.baglanti());
			SqlDataReader dr = komut1.ExecuteReader();
			DataList2.DataSource = dr;
			DataList2.DataBind();
	}

		protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
		{

		}
	}
}