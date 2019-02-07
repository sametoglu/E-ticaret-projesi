using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Data.Sql;
using System.Data;



namespace Admin
{
    public partial class giris : System.Web.UI.Page
    {
        public SqlConnection baglanti = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            string connection_string = "Data Source=Localhost;Initial Catalog=web_odev;Integrated Security=True";
            baglanti.ConnectionString = connection_string;


            
        }

        protected void btn_loginClick(object sender, EventArgs e)
        {
            baglanti.Open();

            try
            {
                SqlDataAdapter sifre = new SqlDataAdapter("SELECT full_name,sifre FROM kullanici WHERE e_mail='" + tb_mail.Text + "'", baglanti);
                DataTable sifre_table = new DataTable();
                sifre.Fill(sifre_table);



                SqlDataAdapter yetki = new SqlDataAdapter("SELECT yetki FROM yetkilendirme WHERE ad='" + sifre_table.Rows[0][0] + "'", baglanti);
                DataTable yetki_table = new DataTable();
                yetki.Fill(yetki_table);

                if (sifre_table.Rows[0][1].ToString().Trim().Equals(tb_password.Text.ToString()) && Convert.ToInt32(yetki_table.Rows[0][0]) == 0)
                {
                    Session["Admin"] = sifre_table.Rows[0][0].ToString();
                    Response.Redirect("index.aspx");
                }
                else
                {
                    MessageBox.Show("sifre : " + sifre_table.Rows[0][1].ToString());
                    MessageBox.Show("sifre 1 : " + tb_password.Text.ToString());
                    MessageBox.Show("yetki : " + Convert.ToInt32(yetki_table.Rows[0][0]).ToString());

                }
            }
            catch (Exception)
            {
                MessageBox.Show("Bilgileriniz Hatalı");
            }

           

        }






    }
}