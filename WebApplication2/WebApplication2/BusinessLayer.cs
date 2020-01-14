using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;  // dodano
using System.Data.SqlClient; // dodano

namespace WebApplication2
{
    public class BusinessLayer
    {
        DataAccessLayer dal = new DataAccessLayer();
        public int ID_student { get; set; }
        public string name { get; set; }
        public string nazwisko { get; set; }
        public int studentNo { get; set; }

        public DataSet selectStudents()
        {
            string query = "select * from Students;";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.CommandText = query;
            return dal.selectData(sqlcmd);
        }
        public void insertStudent()
        {
            string query = "insert into Students values(@name,@nazwisko,@studentNo);";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.CommandText = query;
            sqlcmd.Parameters.AddWithValue("@name", name);
            sqlcmd.Parameters.AddWithValue("@nazwisko", nazwisko);
            sqlcmd.Parameters.AddWithValue("@studentNo", studentNo);
            dal.queryExecution(sqlcmd);

        }
        public void updateStudent()
        {
            string query = "update Students set name = @name, nazwisko = @nazwisko, studentNo = @studentNo where ID_student = @ID_student;";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.CommandText = query;
            sqlcmd.Parameters.AddWithValue("@name", name);
            sqlcmd.Parameters.AddWithValue("@nazwisko", nazwisko);
            sqlcmd.Parameters.AddWithValue("@studentNo", studentNo);
            sqlcmd.Parameters.AddWithValue("@ID_student", ID_student);
            dal.queryExecution(sqlcmd);
        }
        public void deleteStudent() 
        {
            string query = "delete from Students where ID_student = @ID_student;";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.CommandText = query;
            sqlcmd.Parameters.AddWithValue("@ID_student", ID_student);
            dal.queryExecution(sqlcmd);
        }
        public void szukajStudent()
        {
            string query = "select name from Students where studentNo = @studentNo;";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.CommandText = query;          
            sqlcmd.Parameters.AddWithValue("@studentNo", studentNo);          
            dal.queryExecution(sqlcmd);
            
            
        }
    }
}