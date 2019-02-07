using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Admin.moduller
{
    public partial class Kullanici_sil : System.Web.UI.UserControl
    {
        public SqlConnection baglanti = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            string connection_string = "Data Source=Localhost;Initial Catalog=web_odev;Integrated Security=True";
            baglanti.ConnectionString = connection_string;

        }
        int id,secili;

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            id = Convert.ToInt32(row.Cells[1].Text);
           
            SqlCommand com = new SqlCommand("exec proc_kullanici_sil @id",baglanti);
            com.Parameters.Add("@id", id);
            baglanti.Open();
            com.ExecuteNonQuery();
            baglanti.Close();
            Page.Response.Redirect(HttpContext.Current.Request.Url.ToString(), true);
        }
       
    }
}