using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;

namespace yemekTRF.Appclas
{
	public class sqlsinifi
	{
		public SqlConnection baglanti()
		{
			SqlConnection baglan = new SqlConnection(@"Data source=.;initial catalog=YemekTarifi;  integrated security=True");
			baglan.Open();
			
			return baglan;
		}
	}
}