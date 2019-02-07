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
   
     public partial class stok : System.Web.UI.UserControl
    {
        public SqlConnection baglanti = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            string connection_string = "Data Source=Localhost;Initial Catalog=web_odev;Integrated Security=True";
            baglanti.ConnectionString = connection_string;



            baglanti.Open();


            SqlDataAdapter stok = new SqlDataAdapter("select urunler.baslik  as urun_adi , stok.adet as adet from urunler inner join stok on urunler.id=stok.urun_id ", baglanti);
            DataTable stok_table = new DataTable();
            stok.Fill(stok_table);

            grid_stok.DataSource = stok_table;
            grid_stok.DataBind();



            baglanti.Close();


        }

        protected void ara_Click(object sender, EventArgs e)
        {
            baglanti.Open();


            try
            {

                SqlDataAdapter stok_ara = new SqlDataAdapter("select urunler.baslik as urun_adi , stok.adet as adet from stok inner join urunler on stok.urun_id = urunler.id where urunler.id=(select id from urunler where baslik='" + txt_ara.Text.Trim().ToLower() + "')", baglanti);
                DataTable stok_ara_sonuc = new DataTable();
                stok_ara.Fill(stok_ara_sonuc);

                if (stok_ara_sonuc.Rows.Count == 0)
                {
                    grid_stok.DataSource = stok_ara_sonuc;
                    grid_stok.DataBind();

                    MessageBox.Show("Aradıgınız urun bulunamadı");
                }
                else
                {
                    grid_stok.DataSource = stok_ara_sonuc;
                    grid_stok.DataBind();

                }

            }
            catch (Exception)
            {
                MessageBox.Show("hata");
            }

            baglanti.Close();



        }
    }
}
