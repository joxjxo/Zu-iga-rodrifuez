using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Cotizador.DATA;
using Cotizador.BLL.Interfaces;
using Cotizador.BLL.Metodos;
using System.Data;

namespace CotizadorUI
{
    public partial class NuevoPlano : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Request.QueryString["cod"].ToString() != null)
                    {
                        Label1.Visible = true;
                        txt_codigo.Visible = true;
                        IPlanos iplanos = new MPlanos();
                        planos plano = iplanos.Buscarplanos(Convert.ToInt32(Request.QueryString["cod"]));
                        //plano.id_plano = Convert.ToInt32();
                        txt_codigo.Text = plano.id_plano.ToString();
                        //txt_codigo.Text=Request.QueryString["cod"].ToString();
                        TextBox1.Text = plano.Nombre_plano;
                        TextBox2.Visible = true;
                        TextBox2.Text = plano.Plano;
                        plano.Documento = Convert.ToInt32(DropDownList3.Text);


                        IPlanos tr = new MPlanos();
                        List<planos> listatrabaj = tr.Listarplanos();
                        var lista2 = listatrabaj.Select(x => new { x.id_plano, x.Nombre_plano, x.Plano, x.Documento });
                        GridView1.DataSource = lista2;
                        GridView1.DataBind();
                    }
                }
                catch (Exception)
                {


                    Label1.Visible = false;
                    txt_codigo.Visible = false;
                    TextBox2.Visible = false;
                    TextBox1.Text = string.Empty;


                }
            }

           
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }

        protected void btn_subir_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                string fname = FileUpload2.PostedFile.FileName;
                string extension = Path.GetExtension(fname);
                int flag = 0;
                switch (extension.ToLower())
                {
                    case ".doc":
                    case ".docx":
                    case ".pdf":
                    case ".dwt":
                    case "dwg":
                    case ".jpg":
                    case "png":
                    case ".xlsx":
                        flag = 1;
                        break;
                    default:
                        flag = 0;
                        break;
                }
                if (flag == 1)
                {
                    FileUpload2.SaveAs(Server.MapPath("~/Acuerdos/" + fname));
                    if (Request.QueryString["cod"] != null)
                    {
                        if (FileUpload2.HasFile)
                        {
                            planos p = new planos
                            {
                                Nombre_plano = TextBox1.Text,
                                Plano = fname,
                                Documento = Convert.ToInt32(DropDownList3.SelectedIndex + 1)
                            };
                            IPlanos pl = new MPlanos();
                            pl.Actualizarplanos(p);

                        }
                        else
                        {
                            planos p = new planos
                            {
                                Nombre_plano = TextBox1.Text,
                                Plano = TextBox2.Text,
                                Documento = Convert.ToInt32(DropDownList3.SelectedIndex + 1)
                            };
                            IPlanos pl = new MPlanos();
                            pl.Actualizarplanos(p);

                        }
                    }
                    else
                    {
                        planos p = new planos
                        {
                            Nombre_plano = TextBox1.Text,
                            Plano = fname,
                            Documento = Convert.ToInt32(DropDownList3.SelectedIndex + 1)
                        };
                        IPlanos pl = new MPlanos();
                        pl.InsertarPlanos(p);
                    }
                }
                else {
                    Response.Write("error");
                }

            }
        }
    }
}