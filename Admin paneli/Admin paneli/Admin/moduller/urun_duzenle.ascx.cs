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


namespace Admin.moduller
{
    public partial class urun_duzenle : System.Web.UI.UserControl
    {
        public SqlConnection baglanti = new SqlConnection();
        GridViewRow row;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connection_string = "Data Source=localhost;Initial Catalog=web_odev;Integrated Security=True";
            baglanti.ConnectionString = connection_string;

            baglanti.Open();

            SqlDataAdapter kategoriler = new SqlDataAdapter("SELECT * FROM kategoriler ", baglanti);
            DataTable kategori_baslik = new DataTable();
            kategoriler.Fill(kategori_baslik);

            kategori_list.DataSource = kategori_baslik;
            kategori_list.DataTextField = "baslik";
            kategori_list.DataValueField = "id";
            kategori_list.DataBind();

            SqlDataAdapter urunler = new SqlDataAdapter("select urunler.id as id, kategoriler.baslik as kategori_adi,urunler.baslik as urun_adi,aciklama,fiyat,stok.adet as adet from urunler inner join kategoriler on urunler.kategori_id=kategoriler.id inner join stok on urunler.id=stok.urun_id;", baglanti);
            DataTable urun_table = new DataTable();
            urunler.Fill(urun_table);

            grid_urunler.DataSource = urun_table;
            grid_urunler.DataBind();

            baglanti.Close();
        }

        protected void ara_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            try
            {

                SqlDataAdapter urun_ara = new SqlDataAdapter("select urunler.id as id, kategoriler.baslik as kategori_adi,urunler.baslik as urun_adi,aciklama,fiyat,stok.adet as adet from kategoriler inner join urunler on kategoriler.id = urunler.kategori_id inner join stok on stok.urun_id = urunler.id where urunler.id in (select id from urunler where baslik='" + txt_ara.Text.Trim().ToString() + "')", baglanti);
                DataTable urun_ara_sonuc = new DataTable();
                urun_ara.Fill(urun_ara_sonuc);

                if (urun_ara_sonuc.Rows.Count == 0)
                {
                    grid_urunler.DataSource = urun_ara_sonuc;
                    grid_urunler.DataBind();

                    MessageBox.Show("Aradıgınız urun bulunamadı!");
                }
                else
                {
                    grid_urunler.DataSource = urun_ara_sonuc;
                    grid_urunler.DataBind();

                }

            }
            catch (Exception)
            {
                MessageBox.Show("hata");
            }

           
           

            baglanti.Close();

        }



       

        protected void btn_onay_Click(object sender, EventArgs e)
        {
            
            SqlDataAdapter urunekle = new SqlDataAdapter("exec proc_urun_guncelle " + grid_urunler.SelectedRow.Cells[1].Text.ToString().Trim() + "," + Convert.ToInt32(kategori_list.SelectedValue.ToString()) + ",'" + tb_baslik.Text + "','" + ta_aciklama.Text + "'," + Convert.ToDouble(tb_fiyat.Text) + ",'" + renk_list.SelectedValue.ToString() + "','" + beden_list.SelectedValue.ToString() + "'," + Convert.ToInt32(tb_stok.Text) + "", baglanti);
            DataTable urunekle_table = new DataTable(); 
            urunekle.Fill(urunekle_table);

            SqlDataAdapter urunler = new SqlDataAdapter("select urunler.id as id, kategoriler.baslik as kategori_adi,urunler.baslik as urun_adi,aciklama,fiyat,stok.adet as adet from urunler inner join kategoriler on urunler.kategori_id=kategoriler.id inner join stok on urunler.id=stok.urun_id;", baglanti);
            DataTable urun_table = new DataTable();
            urunler.Fill(urun_table);

            grid_urunler.DataSource = urun_table;
            grid_urunler.DataBind();

            tb_fiyat.Text = "";
            tb_baslik.Text = "";
            ta_aciklama.Text = "";
            renk_list.SelectedIndex = 0;
            kategori_list.SelectedIndex = 0;
            beden_list.SelectedIndex = 0; 
            
            
        }



        protected void grid_urunler_SelectedIndexChanged(object sender, EventArgs e)
        {

            tb_baslik.Text = grid_urunler.SelectedRow.Cells[3].Text.ToString();
            tb_fiyat.Text = grid_urunler.SelectedRow.Cells[5].Text.ToString();
            tb_stok.Text = grid_urunler.SelectedRow.Cells[6].Text.ToString();
            ta_aciklama.Text = grid_urunler.SelectedRow.Cells[4].Text.ToString();
            //beden_list.SelectedValue = grid_urunler.SelectedRow.Cells[7].Text.ToString();
            //renk_list.SelectedValue = grid_urunler.SelectedRow.Cells[6].Text.ToString();
            kategori_list.SelectedItem.Text = grid_urunler.SelectedRow.Cells[2].Text.Trim().ToString();
        }

       


    }
}