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
    public partial class urun_ekle : System.Web.UI.UserControl
    {
        public SqlConnection baglanti = new SqlConnection();


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

            SqlDataAdapter stok = new SqlDataAdapter("select kategoriler.baslik as kategori_adi,urunler.baslik as urun_adi,aciklama,fiyat,renk,beden,stok.adet as adet from urunler inner join kategoriler on urunler.kategori_id=kategoriler.id inner join stok on urunler.id=stok.urun_id; ", baglanti);
            DataTable stok_table = new DataTable();
            stok.Fill(stok_table);

            grid_urunler.DataSource = stok_table;
            grid_urunler.DataBind();

            baglanti.Close();
        }

        protected void urun_ekle_Click(object sender, EventArgs e)
        {
            try
            {






            SqlDataAdapter urunekle = new SqlDataAdapter("exec proc_urun_kayit '" + tb_resim_adi.Text.Trim().ToString() + "','" + Image1.ImageUrl + "','" + Image2.ImageUrl + "','" + Image3.ImageUrl + "','" + Image4.ImageUrl + "'," + Convert.ToInt32(kategori_list.SelectedValue.ToString()) + ",'" + tb_baslik.Text + "','" + ta_aciklama.Text + "'," + Convert.ToDouble(tb_fiyat.Text) + ",'" + renk_list.SelectedValue.ToString() + "','" + beden_list.SelectedValue.ToString() + "'," + Convert.ToInt32(tb_stok.Text) + "", baglanti);
            DataTable urunekle_table = new DataTable();
            urunekle.Fill(urunekle_table);
            
            SqlDataAdapter stok = new SqlDataAdapter("select kategoriler.baslik as kategori_adi,urunler.baslik as urun_adi,aciklama,fiyat,renk,beden,stok.adet as adet from urunler inner join kategoriler on urunler.kategori_id=kategoriler.id inner join stok on urunler.id=stok.urun_id; ", baglanti);
            DataTable stok_table = new DataTable();
            stok.Fill(stok_table);

            grid_urunler.DataSource = stok_table;
            grid_urunler.DataBind();

            tb_fiyat.Text = "";
            tb_baslik.Text="";
            ta_aciklama.Text = "";
            renk_list.SelectedIndex = 0;
            kategori_list.SelectedIndex = 0;
            beden_list.SelectedIndex = 0;

            }
            catch (Exception)
            {

                MessageBox.Show("hata");
            }
        }

        protected void btn_resim_Click(object sender, EventArgs e)
        {

            /*dosya varmı*/
            if (FileUpload4.HasFile)
            {/*uzantı kontrol*/


                string filextension = System.IO.Path.GetExtension(FileUpload4.FileName);
                if (filextension.ToLower() != ".jpg" && filextension.ToLower() != ".png")
                {
                    Labelresim.Font.Bold = true;
                    Labelresim.Text = "secilen dokuman jpg veya png formatında olmalıdır.";
                    Labelresim.ForeColor = System.Drawing.Color.Red;
                }

                else
                {
                    int filesize = FileUpload4.PostedFile.ContentLength;/*byte cinsinden*/
                    if (filesize > 500000)
                    {
                        Labelresim.Font.Bold = true;
                        Labelresim.Text = "max dosya uzunlugu gecildi";
                        Labelresim.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        FileUpload4.SaveAs(Server.MapPath("~/image/" + FileUpload4.FileName));
                        Image4.ImageUrl = "~/image/" + FileUpload4.FileName + "";
                        

                    }
                }

            }
            else
            {
                MessageBox.Show("Hata 1");
            }
            if (FileUpload3.HasFile)
                 {/*uzantı kontrol*/
                string filextension = System.IO.Path.GetExtension(FileUpload3.FileName);
                if (filextension.ToLower() != ".jpg" && filextension.ToLower() != ".png")
                {
                    Labelresim.Font.Bold = true;
                    Labelresim.Text = "secilen dokuman jpg veya png formatında olmalıdır.";
                    Labelresim.ForeColor = System.Drawing.Color.Red;
                }

                else
                {
                    int filesize = FileUpload3.PostedFile.ContentLength;/*byte cinsinden*/
                    if (filesize > 500000)
                    {
                        Labelresim.Font.Bold = true;
                        Labelresim.Text = "max dosya uzunlugu gecildi";
                        Labelresim.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        FileUpload3.SaveAs(Server.MapPath("~/image/" + FileUpload3.FileName));
                        Image3.ImageUrl = "~/image/" + FileUpload3.FileName + "";
                        

                    }
                }

            }
            else
            {
                MessageBox.Show("Hata 2");
            }
            if(FileUpload2.HasFile)
             {/*uzantı kontrol*/
                 string filextension = System.IO.Path.GetExtension(FileUpload2.FileName);
                if (filextension.ToLower() != ".jpg" && filextension.ToLower() != ".png")
                {
                    Labelresim.Font.Bold = true;
                    Labelresim.Text = "secilen dokuman jpg veya png formatında olmalıdır.";
                    Labelresim.ForeColor = System.Drawing.Color.Red;
                }

                else
                {
                    int filesize = FileUpload2.PostedFile.ContentLength;/*byte cinsinden*/
                    if (filesize > 500000)
                    {
                        Labelresim.Font.Bold = true;
                        Labelresim.Text = "max dosya uzunlugu gecildi";
                        Labelresim.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        FileUpload2.SaveAs(Server.MapPath("~/image/" + FileUpload2.FileName));
                        Image2.ImageUrl = "~/image/" + FileUpload2.FileName + "";
                        

                    }
                }

            }
            else
            {
                MessageBox.Show("Hata 3");
            }
            if (FileUpload1.HasFile)
             {/*uzantı kontrol*/
                string filextension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (filextension.ToLower() != ".jpg" && filextension.ToLower() != ".png")
                {
                    Labelresim.Font.Bold = true;
                    Labelresim.Text = "secilen dokuman jpg veya png formatında olmalıdır.";
                    Labelresim.ForeColor = System.Drawing.Color.Red;
                }

                else
                {
                    int filesize = FileUpload1.PostedFile.ContentLength;/*byte cinsinden*/
                    if (filesize > 500000)
                    {
                        Labelresim.Font.Bold = true;
                        Labelresim.Text = "max dosya uzunlugu gecildi";
                        Labelresim.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/image/" + FileUpload1.FileName));
                        Image1.ImageUrl = "~/image/" + FileUpload1.FileName + "";
                        

                    }
                }

            }
            else
            {
                MessageBox.Show("Hata 4");
            }
        }
    }
}