using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.moduller
{
    public partial class kullanıcı_ekle : System.Web.UI.UserControl
    {
        public SqlConnection baglanti = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            string connection_string = "Data Source=Localhost;Initial Catalog=web_odev;Integrated Security=True";
            baglanti.ConnectionString = connection_string;



        }

        string kullanicimail;
        int durum,yetki=1;
        //int yetki;
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == false) durum = 0;
            else durum = 1;
            kullanicimail = Convert.ToString(TextBox1.Text) + "@personel.com";
            
            
            SqlCommand com = new SqlCommand("exec kullanici_ekle @e_mail,@tc,@full_name,@tel,@sifre,@guvenlik_id,@guvenlik_cevap,@durum,@yetki,@adresbasligi,@aciklama", baglanti);
            com.Parameters.Add("@e_mail", kullanicimail);
            com.Parameters.Add("@tc",TextBox2.Text);
            com.Parameters.Add("@full_name", TextBox3.Text);
            com.Parameters.Add("@tel",TextBox4.Text);
            com.Parameters.Add("@sifre", TextBox5.Text);
            com.Parameters.Add("@guvenlik_id", 1);
            com.Parameters.Add("@guvenlik_cevap", TextBox6.Text);
            com.Parameters.Add("@durum",durum);
            com.Parameters.Add("@yetki", yetki);
            com.Parameters.Add("@adresbasligi", TextBox7.Text);
            com.Parameters.Add("@aciklama", TextBox8.Text);
            
            
            baglanti.Open();
            com.ExecuteNonQuery();

           /* SqlCommand kisi = new SqlCommand("select max(id) from kullanici", baglanti);
            Label16.Text = Convert.ToString(kisi);
            int id=Convert.ToInt32(Label16.Text);
            Label16.Visible = true;
            SqlCommand com2 = new SqlCommand("insert into kullanici_detay adres_basligi,aciklama values (@adres_basligi,@ayrinti)", baglanti);
            com2.Parameters.Add("@adres_basligi", TextBox7.Text);
            com2.Parameters.Add("@ayrıntı", TextBox8.Text);
            com2.Parameters.Add("@kullanici_id",id );
            com2.ExecuteNonQuery();*/

            MessageBox.Show("KAYIT BAŞARILI");
            Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
            baglanti.Close();
        }
    }
}