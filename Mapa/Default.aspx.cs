using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    string Opcion;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
  
        {
            Opcion = Request.QueryString["Opcion"].ToString();
            if(Opcion=="Abrir")
            {

            }
            if (Opcion == "Nuevo")
            {

            
            string param1 = Request.QueryString["latitud"].ToString();
            string param2 = Request.QueryString["longitud"].ToString();
            if (Session["Parametros"] != null)
            {
                Session["Parametros"] = Session["Parametros"].ToString() + "_" + param1 + "," + param2;

                string session = Session["Parametros"].ToString();
            }
            else
            {
                Session["Parametros"] = param1 + "," + param2;

            }


            ClientScript.RegisterStartupScript(GetType(), "initialize", "initialize(" + param1 + "," + param2 + ");", true);
            //ClientScript.RegisterStartupScript(GetType(), "addMarker", "addMarker("+ param1 + "," + param2+");", true);
                }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        ////string url = HttpContext.Current.Request.Url.AbsoluteUri;
        ////url.Split('#');
        if( this.HiddenField1.Value.ToString() !="")
        {
        String j = this.HiddenField1.Value.ToString();
        ScriptManager.RegisterStartupScript(this, typeof(Page), "Eliminar", "Eliminar(" + j + ");", true);

        //String j = this.HiddenField1.Value.ToString();
        string val = Session["Parametros"].ToString();
        string [] para = val.Split('_');
        string k = j.ToString().Substring(0, 10);
       
        for (int a = 0; a < para.Length; a++)
        {
            string h = para[a].ToString().Substring(0, 10);
       
            if (h != k)
            {
                val = val  + para[a].ToString() + "_";
            }
        }


        Session["Parametros"] = val;
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        txtMap.Visible = true;
        lblMap.Visible = true;
        if(txtMap.Text=="")
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", "alert('Debe agregar un nombre a este mapa.')", true);
            txtMap.Focus();
            return;
        }
        string val = Session["Parametros"].ToString();
        string[] para = val.Split('_');
        DS_MapsTableAdapters.tbl_MapsTableAdapter insertMap = new DS_MapsTableAdapters.tbl_MapsTableAdapter();
        int id_Map =insertMap.InsertQuery(txtMap.Text);
        
        for (int a = 0; a < para.Length; a++)
        {
         
            string[] para1 = para[a].Split(',');


            DS_InsertTableAdapters.tbl_muTableAdapter ta = new DS_InsertTableAdapters.tbl_muTableAdapter();

            ta.InsertQuery("00:00:00:00:00", "trango_11", "192.168.100.100", "desc", "" + id_Map, Convert.ToString(para1[0]), Convert.ToString(para1[1]));
                      
        }

    }
}