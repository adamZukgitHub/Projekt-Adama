using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Models;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        BusinessLayer b1 = new BusinessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            referenceGridView();
        }

        protected void insertBtn_Click(object sender, EventArgs e)
        {
            b1.name = txtname.Text;
            b1.nazwisko = txtnazwisko.Text;
            b1.studentNo = Convert.ToInt32(txtstudentNo.Text);
            b1.insertStudent();

            referenceGridView();
            czyscicie();
        }
        protected void referenceGridView()
        {
            GridView1.DataSource = b1.selectStudents();
            GridView1.DataBind();
        }
        protected void czyscicie()
        {
            txtname.Text = "";
            txtnazwisko.Text = "";
            txtstudentNo.Text = null;
            txtIDstudent.Text = null;
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            b1.ID_student = Convert.ToInt32(txtIDstudent.Text);
            b1.name = txtname.Text;
            b1.nazwisko = txtnazwisko.Text;
            b1.studentNo = Convert.ToInt32(txtstudentNo.Text);           
            b1.updateStudent();   
   
            referenceGridView();
            czyscicie();
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            b1.ID_student = Convert.ToInt32(txtIDstudent.Text);
            b1.deleteStudent();

            referenceGridView();
            czyscicie();
        }

        protected void szukajBtn_Click(object sender, EventArgs e)
        {        
            b1.studentNo = Convert.ToInt32(txtstudentNo.Text);
            StudentModel student = b1.szukajStudent();

            txtIDstudent.Text = student.ID_student.ToString();
            txtname.Text = student.name;
            txtnazwisko.Text = student.nazwisko;
            txtstudentNo.Text = student.studentNo.ToString();

            referenceGridView();

        }

    }
}