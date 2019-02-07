using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.moduller
{
   
        public partial class Siparis_ekle : System.Web.UI.UserControl
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);

            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    dataBagla();
                }

            }
            private void dataBagla()
            {
                try
                {
                    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["webConnectionString"].ConnectionString);
                    cnn.Open();
                    string doldur = "SELECT siparisler.id as siparisid,kullanici.full_name as musteriadi,urunler.baslik as urunadi,urunler.aciklama,siparisler.siparis_fiyat as fiyat,siparisler.urun_adet as satismiktari  FROM kullanici INNER JOIN siparisler ON siparisler.kullanici_id = kullanici.id INNER JOIN urunler ON urunler.id = siparisler.urun_id where siparisler.durum=0";
                    SqlCommand komut = new SqlCommand(doldur, cnn);
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    gridviewSiparisOnayla.DataSource = dt;
                    gridviewSiparisOnayla.DataBind();
                }
                catch
                {
                    Response.Redirect("giris.aspx");

                }

            }

            private bool kayitOnayla(int siparisid)
            {
                bool sonuc = false;
                SqlCommand cmd = new SqlCommand("exec proc_admin_onay @siparis_id", cnn);
                cmd.Parameters.AddWithValue("@siparis_id", siparisid);
                try
                {
                    if (cnn.State == ConnectionState.Closed)
                    {
                        cnn.Open();

                    }
                    sonuc = Convert.ToBoolean(cmd.ExecuteNonQuery());

                }

                catch (SqlException ex)
                {
                    string hata = ex.Message;

                }
                finally
                {
                    cnn.Close();
                }

                return sonuc;
            }



            private bool kayitiptal(int siparisid)
            {
                bool sonuc = false;
                SqlCommand cmd = new SqlCommand("Delete from siparisler where id=@siparis_id", cnn);
                cmd.Parameters.AddWithValue("@siparis_id", siparisid);
                try
                {
                    if (cnn.State == ConnectionState.Closed)
                    {
                        cnn.Open();

                    }
                    sonuc = Convert.ToBoolean(cmd.ExecuteNonQuery());

                }

                catch (SqlException ex)
                {
                    string hata = ex.Message;

                }
                finally
                {
                    cnn.Close();
                }

                return sonuc;
            }





            protected void btnSil_Click(object sender, EventArgs e)
            {



            }


            protected void gridviewSiparisOnayla_RowDeleting(object sender, GridViewDeleteEventArgs e)
            {

                Label satisid = (Label)gridviewSiparisOnayla.Rows[e.RowIndex].FindControl("lblSiparisId");
                int siparisid = Convert.ToInt32(satisid.Text);
                bool sonuc = kayitiptal(siparisid);
                if (sonuc)
                {
                    gridviewSiparisOnayla.EditIndex = -1;
                    dataBagla();
                    if (sonuc)
                    {

                        dataBagla();
                    }

                }
            }

            protected void gridviewSiparisOnayla_RowUpdating(object sender, GridViewUpdateEventArgs e)
            {
                Label satisid = (Label)gridviewSiparisOnayla.Rows[e.RowIndex].FindControl("lblSiparisId");
                int siparisid = Convert.ToInt32(satisid.Text);
                bool sonuc = kayitOnayla(siparisid);
                if (sonuc)
                {
                    gridviewSiparisOnayla.EditIndex = -1;
                    dataBagla();
                    if (sonuc)
                    {

                        dataBagla();
                    }

                }
            }


        }

    }