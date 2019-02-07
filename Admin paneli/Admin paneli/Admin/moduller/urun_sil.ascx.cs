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
    public partial class urun_sil : System.Web.UI.UserControl
    {
        public SqlConnection baglanti = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            string connection_string = "Data Source=localhost;Initial Catalog=web_odev;Integrated Security=True";
            baglanti.ConnectionString = connection_string;

            baglanti.Open();

            SqlDataAdapter urunler = new SqlDataAdapter("select urunler.id as id, kategoriler.baslik as kategori_adi,urunler.baslik as urun_adi,aciklama,fiyat,renk,beden,stok.adet as adet from urunler inner join kategoriler on urunler.kategori_id=kategoriler.id inner join stok on urunler.id=stok.urun_id;", baglanti);
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

            SqlDataAdapter urun_ara = new SqlDataAdapter("select urunler.id as id, kategoriler.baslik as kategori_adi,urunler.baslik as urun_adi,aciklama,fiyat,stok.adet as adet from kategoriler inner join urunler on kategoriler.id = urunler.kategori_id inner join stok on stok.urun_id = urunler.id where urunler.id = (select id from urunler where baslik='"+txt_ara.Text.Trim().ToString()+"')", baglanti);
            DataTable urun_ara_sonuc = new DataTable();
            urun_ara.Fill(urun_ara_sonuc);

            if (urun_ara_sonuc.Rows.Count == 0)
            {
                grid_urunler.DataSource = urun_ara_sonuc;
                grid_urunler.DataBind();

                MessageBox.Show("Aradıgınız urun bulunamadı");
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




        protected void grid_urunler_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = grid_urunler.Rows[Convert.ToInt32( grid_urunler.SelectedRow)];
            

            SqlDataAdapter urunekle = new SqlDataAdapter("exec proc_urun_sil " + Convert.ToInt32(row.Cells[1].Text.ToString().Trim()) + "", baglanti);
            DataTable urunekle_table = new DataTable();
            urunekle.Fill(urunekle_table);

            SqlDataAdapter stok = new SqlDataAdapter("select urunler.id as id, kategoriler.baslik as kategori_adi,urunler.baslik as urun_adi,aciklama,fiyat,stok.adet as adet from kategoriler inner join urunler on kategoriler.id = urunler.kategori_id inner join stok on stok.urun_id = urunler.id ", baglanti);
            DataTable stok_table = new DataTable();
            stok.Fill(stok_table);

            grid_urunler.DataSource = stok_table;
            grid_urunler.DataBind();
        }


    }
}