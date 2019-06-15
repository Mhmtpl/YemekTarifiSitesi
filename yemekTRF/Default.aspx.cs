using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yemekTRF.Appclas;
using System.Data.SqlClient;


namespace yemekTRF
{
    public partial class Default : System.Web.UI.Page
    {
		sqlsinifi bgl = new sqlsinifi();
		protected void Page_Load(object sender, EventArgs e)
        {
			SqlCommand komut = new SqlCommand(" Select * From Tarif",bgl.baglanti());
			SqlDataReader dr = komut.ExecuteReader();
			ListView2.DataSource = dr;
			ListView2.DataBind();
			

		}

		protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
		{

		}
	}
}