using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
public partial class _Default : System.Web.UI.Page
{
    string Opcion;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Opcion = Request.QueryString["Opcion"].ToString();
            if (Opcion == "Abrir")
            {
                string IdMaps = Request.QueryString["MapId"].ToString();
                /*
                 * Capturaremos el Id del Mapa y consultaremos la base de datos generando una sesion 
                 * para poder manipular los elementos de los markers en formato JSON
                 */
                //Aqui solo obtenemos el nombre del mapa y lo enviamos a la funcion de abrir
                try
                {
                    var dt = new DS_MapsMarkers.TableMarkerDataTable();
                    var ta = new DS_MapsMarkersTableAdapters.TableMarkerTableAdapter();
                    dt = ta.GetData(Convert.ToInt32(IdMaps));
                    string MapName = "";
                    foreach (DS_MapsMarkers.TableMarkerRow param in dt)
                    {
                        MapName = param["MapName"].ToString();
                    }
                    //Convertimos el metodo en formato para guardar en una sesion				
                    //Quiza sea mas facil pasar una variable a una funcion JS 			
                    Session["Markers"] = openMaps(MapName);
                    //showmarkers
                    //ClientScript.RegisterStartupScript(GetType(), "showmarkers", "showmarkers(" +openMaps(MapName)+");", true);
                }
                catch (Exception)
                {
                    throw;
                }


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

                ScriptManager.RegisterStartupScript(this, typeof(Page), "addMarker", "addMarker(" + param1 + "," + param2 + ");", true);
                //ClientScript.RegisterStartupScript(GetType(), "initialize", "initialize(" + param1 + "," + param2 + ");", true);
                //ClientScript.RegisterStartupScript(GetType(), "addMarker", "addMarker("+ param1 + "," + param2+");", true);
            }
        }
    }

    private String openMaps(String IdMap)
    {
        var dt = new DS_MapsMarkers.tbl_muDataTable();
        var ta = new DS_MapsMarkersTableAdapters.tbl_muTableAdapter();
        ta.Fill(dt, IdMap);

        JavaScriptSerializer serializer = new JavaScriptSerializer();
        List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
        Dictionary<string, object> row;
        foreach (DataRow dr in dt.Rows)
        {
            row = new Dictionary<string, object>();
            foreach (DataColumn col in dt.Columns)
            {
                row.Add(col.ColumnName, dr[col]);
            }
            rows.Add(row);
        }
        var x = serializer.Serialize(rows);

        ScriptManager.RegisterStartupScript(this, typeof(Page), "showmeJson", "showmeJson(" + x + ");", true);
        return x;


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        ////string url = HttpContext.Current.Request.Url.AbsoluteUri;
        ////url.Split('#');
        if (this.HiddenField1.Value.ToString() != "")
        {
            String j = this.HiddenField1.Value.ToString();
            ScriptManager.RegisterStartupScript(this, typeof(Page), "Eliminar", "Eliminar(" + j + ");", true);

            //String j = this.HiddenField1.Value.ToString();
            if (Request.QueryString["Opcion"].ToString() == "Nuevo")
            {
                string val = Session["Parametros"].ToString();
                string[] para = val.Split('_');
                string k = j.ToString().Substring(0, 10);

                for (int a = 0; a < para.Length; a++)
                {
                    string h = para[a].ToString().Substring(0, 10);

                    if (h != k)
                    {
                        val = val + para[a].ToString() + "_";
                    }
                }


                Session["Parametros"] = val;
            }
            if (Request.QueryString["Opcion"].ToString() == "Abrir")
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "ClearMap", "ClearMap();", true);
                var ta = new DS_MapsMarkersTableAdapters.tbl_mu1TableAdapter();
                ta.Delete(Convert.ToInt32(HiddenField2.Value));
            }

        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        txtMap.Visible = true;
        lblMap.Visible = true;
        if (txtMap.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", "alert('Debe agregar un nombre a este mapa.')", true);
            txtMap.Focus();
            return;
        }
        string val = Session["Parametros"].ToString();
        string[] para = val.Split('_');
        DS_MapsTableAdapters.tbl_MapsTableAdapter insertMap = new DS_MapsTableAdapters.tbl_MapsTableAdapter();
        int id_Map = insertMap.InsertQuery(txtMap.Text);

        for (int a = 0; a < para.Length; a++)
        {

            string[] para1 = para[a].Split(',');


            DS_InsertTableAdapters.tbl_muTableAdapter ta = new DS_InsertTableAdapters.tbl_muTableAdapter();

            ta.InsertQuery("00:00:00:00:00", "trango_11", "192.168.100.100", "desc", "" + id_Map, Convert.ToString(para1[0]), Convert.ToString(para1[1]));

        }

    }
}
