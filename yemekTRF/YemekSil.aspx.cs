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
	public partial class YemekSil : System.Web.UI.Page
	{
		sqlsinifi bgl = new sqlsinifi();
		
		protected void Page_Load(object sender, EventArgs e)
		{

			
				int id =Convert.ToInt32( Request.QueryString["Yid"]);

			
			SqlCommand komutsil = new SqlCommand("Delete From Tarif where TarifId=@p1", bgl.baglanti());
			komutsil.Parameters.AddWithValue("@p1", id);
			komutsil.ExecuteNonQuery();
			bgl.baglanti().Close();
			Response.Redirect("Listele.aspx");
		}
	}
}