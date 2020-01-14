using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient; // dodano dla sql connection i slqcommand
using System.Data;  // dodano  dla sql set
using System.Configuration; // dodano dla czytania plikow konfiguracyjnych

namespace WebApplication2
{
    public class DataAccessLayer
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);   //private 

        public DataSet selectData(SqlCommand sqlcmd)    // select, select
        {
            sqlcmd.Connection = conn;
            SqlDataAdapter sda = new SqlDataAdapter(sqlcmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds;
        }

        public void queryExecution(SqlCommand sqlcmd)    // insert, update, delete
        {
            sqlcmd.Connection = conn;
            conn.Open();
            sqlcmd.ExecuteNonQuery();
            conn.Close();
        }

        public string GetConnectionString() => ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        //To samo można zapisać tak:
        //public string GetConnectionString() 
        //{ 
        //    return ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString; 
        //}
    }
}