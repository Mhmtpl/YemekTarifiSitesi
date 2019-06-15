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
	public partial class galleri : System.Web.UI.Page
	{
		sqlsinifi bgl = new sqlsinifi();
		protected void Page_Load(object sender, EventArgs e)
		{
			SqlCommand komut = new SqlCommand(" Select * From Tarif", bgl.baglanti());
			SqlDataReader dr = komut.ExecuteReader();
			ListView2.DataSource = dr;
			ListView2.DataBind();
		}
	}
}