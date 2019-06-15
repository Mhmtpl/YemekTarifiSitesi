using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using yemekTRF.Appclas;

namespace yemekTRF
{
	public partial class Iletisim : System.Web.UI.Page
	{
		sqlsinifi bgl = new sqlsinifi();
		
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			 

				SqlCommand komut = new SqlCommand("insert into iletisim (AdSoyad,,mailAdresi,Baslik,konu)values (@p1,@p2,@p3,@p4)", bgl.baglanti());
				komut.Parameters.AddWithValue("@p1", TextBox1.Text);
				komut.Parameters.AddWithValue("@p2", TextBox2.Text);
				komut.Parameters.AddWithValue("@p3", TextBox3.Text);
				komut.Parameters.AddWithValue("@p4", TextBox4.Text);


			komut.ExecuteNonQuery();
			bgl.baglanti().Close();
			Label5.Text = "Mesajınız Gönderildi.En yakın sürede sizinle irtibata geçilecektir.";


		 


			 


				

			 
		}
	}
}