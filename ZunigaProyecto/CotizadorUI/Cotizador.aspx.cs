using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cotizador.DATA;
using Cotizador.BLL.Interfaces;
using Cotizador.BLL.Metodos;


namespace CotizadorUI
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        Icategoriaacabado ic = new Mcategoriaacabado();
        Idatoscotizador id = new Mdatoscotizador();

        Icotizacion icd = new Mcotizacion();
        Idatosclientecs idcl = new Mdatoscliente();

        string desc;

        int preciob = 550;
        int preciop = 750;
        double subpreciototal = 0;
        double preciototal = 0;
        int preciocolones = 0;
        int ca = 20;
        int cs = 9;
        int ba = 5;
        int co = 16;
        int come = 12;
        int ofi = 6;
        int sala = 12;
        int otros = 6600;
        int flo = 5;
        double contador = 0;
        double recoridos = 0;
        double bañopri = 5.5;
        int ca1 = 0;
        int cs1 = 0;
        int ba1 = 0;
        int co1 = 0;
        int come1 = 0;
        int ofi1 = 0;
        int sala1 = 0;


        int variable_opcion = 0;


        protected void Page_Load(object sender, EventArgs e)
        {

            List<datoscotizador> listallave = id.ListarDatosCotizador();
            var listaaa = listallave.Select(x => x.IDD).LastOrDefault();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {




            double hola;

            hola = Convert.ToDouble(lblprecio.Text);
            List<datoscotizador> listallave = id.ListarDatosCotizador();
            var listaaa = listallave.Select(x => x.IDD).LastOrDefault();

            try
            {
                datoscliente dc = new datoscliente
                {
                    Cedula = Convert.ToInt32(TextBox27.Text),
                    Nombre = TextBox28.Text,
                    Apell1 = TextBox29.Text,
                    Apell2 = TextBox29.Text,
                    correo = TextBox30.Text,
                    telefono = Convert.ToInt32(TextBox31.Text)
                };

                Cotizacion cz = new Cotizacion
                {
                    Id_cliente = Convert.ToInt32(TextBox27.Text),
                    IDD = Convert.ToInt32(listaaa.ToString()),
                    Total_Cotizacion = hola,
                    Fecha = DateTime.Now,
                    Localizacion = TextBox32.Text,
                    Observaciones = ("Acabado: " + ddl_acabado.SelectedItem + " Cuarto Princial: " + ddl_CO.SelectedItem + 
                    " Cuartos secundarios :" + ddl_CS.SelectedItem + "Baños: " + ddl_baños.SelectedItem + " Cocina: " 
                    + ddl_cocina.SelectedItem + " Comedores: " + ddl_comedor.SelectedItem + " plantas " 
                    + ddl_plantas.SelectedItem + " sala: " + ddl_sala.SelectedItem + " Precio " + lblprecio.Text + 
                    " Metros cuadrados de la casa " + lbl_totalMetros.Text)

                };

                idcl.InsertarDatosClienter(dc);
                icd.InsertarCotizacion(cz);


                string para = dc.correo;
                string asunto = " Cotizacion Studio z & R";
                string cuerpo = "Se a realizado una nueva cotizacion." + "\n" + "El precio de la cotizacion es " 
                    + lblprecio.Text + '\n' + "El nombre del cliente es " + TextBox28.Text + " " + TextBox29.Text;


                if (new correo().EnviarCorreo(para, asunto, cuerpo))
                {

                }
                else
                {

                }


            }
            catch (Exception)
            {

                throw;
            }


        }

        private void MostarMensaje(string texto)
        {
            mensaje.Visible = true;
            mensajeError.Visible = false;
            textoMensajeError.InnerHtml = string.Empty;
            textoMensaje.InnerHtml = texto;
        }

        private void MostarMensajeError(string texto)
        {
            mensaje.Visible = false;
            mensajeError.Visible = true;
            textoMensajeError.InnerHtml = texto;
            textoMensaje.InnerHtml = string.Empty;
        }

        protected void btnCotizar1_Click(object sender, EventArgs e)
        {

            try

            {
                datoscotizador idc = new datoscotizador


                {
                    Cuarto_Principal = Convert.ToInt32(ddl_CO.SelectedValue),
                    Cuartos_secundarios = Convert.ToInt32(ddl_CS.SelectedValue),
                    Cantidad_Banios = Convert.ToInt32(ddl_baños.SelectedValue),
                    Cocina = Convert.ToInt32(ddl_cocina.SelectedValue),
                    Comedor = Convert.ToInt32(ddl_comedor.SelectedValue),
                    Oficina = Convert.ToInt32(ddl_oficina.SelectedValue),
                    Acabado = Convert.ToInt32(ddl_acabado.SelectedValue),
                    Plantas = Convert.ToInt32(ddl_plantas.SelectedIndex + 1),
                    Sala = Convert.ToInt32(ddl_sala.SelectedValue),
                    Descripcion = ("Acabado: " + ddl_acabado.SelectedItem + " Cuarto Princial: " + ddl_CO.SelectedItem +
                    " Cuartos secundarios :" + ddl_CS.SelectedItem + "Baños: " + ddl_baños.SelectedItem + " Cocina: "
                    + ddl_cocina.SelectedItem + " Comedores: " + ddl_comedor.SelectedItem + " plantas " 
                    + ddl_plantas.SelectedItem + " sala: " + ddl_sala.SelectedItem + " Precio " + lblprecio.Text + 
                    " Metros cuadrados de la casa " + lbl_totalMetros.Text)



                };
                Itrabajadores tr = new Mtrabajadores();
                Idatoscotizador dac = new Mdatoscotizador();
                dac.InsertarDatoCotizador(idc);

                //idc.IDD = variable_opcion;


                contador = ((ca * idc.Cuarto_Principal + bañopri) + (cs * idc.Cuartos_secundarios) + (ba * idc.Cantidad_Banios) + (co * idc.Cocina) + (come * idc.Comedor) + (ofi * idc.Oficina) + (sala * idc.Sala) + 7 + 15);
                if (/*ddl_acabado.SelectedIndex+1 */Convert.ToInt32(ddl_acabado.Text) == 1)
                {

                    ca = ((ca * idc.Cuarto_Principal) + flo) * preciob;
                    cs = (cs * idc.Cuartos_secundarios) * preciob;
                    ba = (ba * idc.Cantidad_Banios) * preciob;
                    co = (co * idc.Cocina) * preciob;
                    come = (come * idc.Comedor) * preciob;
                    ofi = (ofi * idc.Oficina) * preciob;
                    sala = (sala * idc.Sala) * preciob;
                    subpreciototal = ca + cs + ba + co + come + ofi + sala + otros;
                    recoridos = preciototal * 0.20;
                    preciototal = recoridos + subpreciototal;

                }

                else
                {

                    ca = (ca * (idc.Cuarto_Principal + flo)) * preciop;
                    cs = (cs * idc.Cuartos_secundarios) * preciop;
                    ba = (ba * idc.Cantidad_Banios) * preciop;
                    co = (co * idc.Cocina) * preciop;
                    come = (come * idc.Comedor) * preciop;
                    ofi = (ofi * idc.Oficina) * preciop;
                    sala = (sala * idc.Sala) * preciop;
                    subpreciototal = ca + cs + ba + co + come + ofi + sala;
                    recoridos = preciototal * 0.20;
                    preciototal = recoridos + subpreciototal;





                }
                lblprecio.Text = preciototal.ToString();

                lbl_totalMetros.Text = " $ Metros cuadrados totales de la casa son: " + contador + "mts.";

                //lblprecio.Text = variable_opcion.ToString();
                //}
                //int fila = Convert.ToInt32(ddl_acabado.SelectedIndex +1);
                //switch (fila) {
                //    case 1:
                //        ca = (ca * idc.Cuarto_Principal) * preciob;
                //        cs = (cs * idc.Cuartos_secundarios) * preciob;
                //        ba = (ba * idc.Cantidad_Baños) * preciob;
                //        co = (co * idc.Cocina) * preciob;
                //        come = (come * idc.Comedor) * preciob;
                //        ofi = (ofi * idc.Oficina) * preciob;
                //        sala = (sala * idc.Sala) * preciob;
                //        preciototal = ca + cs + ba + co + come + ofi + sala;
                //        System.Threading.Thread.Sleep(1500);
                //        lblprecio.Text = preciototal.ToString();

                //        break;
                //    case 3:
                //        ca = (ca * idc.Cuarto_Principal) * preciop;
                //        cs = (cs * idc.Cuartos_secundarios) * preciop;
                //        ba = (ba * idc.Cantidad_Baños) * preciop;
                //        co = (co * idc.Cocina) * preciop;
                //        come = (come * idc.Comedor) * preciop;
                //        ofi = (ofi * idc.Oficina) * preciop;
                //        sala = (sala * idc.Sala) * preciop;
                //        preciototal = ca + cs + ba + co + come + ofi + sala;
                //        System.Threading.Thread.Sleep(1500);
                //        lblprecio.Text = preciototal.ToString();
                //        break;
                //}



            }

            catch (Exception ex)
            {
                MostarMensajeError("error al insertar");

            }

        }


    }
}