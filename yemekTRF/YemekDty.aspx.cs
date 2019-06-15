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
	public partial class YemekDty : System.Web.UI.Page
	{
		sqlsinifi bgl = new sqlsinifi();
			string TarifId = "";
		protected void Page_Load(object sender, EventArgs e)
		{
			
			TarifId = Request.QueryString["TarifId"];

			SqlCommand komut = new SqlCommand("Select TarifBaslik,TarifIcerik,YayinTarihi,ResimYolu From Tarif where TarifId=@p1", bgl.baglanti());
			komut.Parameters.AddWithValue("@p1", TarifId);
			SqlDataReader dr = komut.ExecuteReader();
			
			while (dr.Read())
			{
				Label1.Text = dr[0].ToString();
			
				Label2.Text = dr[1].ToString();
				Image2.ImageUrl = dr["ResimYolu"].ToString();
				Label3.Text = dr[2].ToString();

			}
			bgl.baglanti().Close();
		}
	}
}