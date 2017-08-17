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
    public partial class CotizadorAvanzado : System.Web.UI.Page
    {

        Icategoriaacabado ic = new Mcategoriaacabado();
        Idatoscotizador id = new Mdatoscotizador();

        int preciob = 550;
        int preciop = 750;
        decimal preciototal = 0;

        int ca = 0;
        int cs = 0;
        int ba = 0;
        int co = 0;
        int come = 0;
        int ofi = 0;
        int sala = 0;


        int cp1 = 0;
        int cp2 = 0;
        int cp3 = 0;
        int cpT = 0;

        int csS1 = 0;
        int css2 = 0;
        int css3 = 0;
        int css4 = 0;
        int cssT = 0;

        int bñ1 = 0;
        int bñ2 = 0;
        int bñ3 = 0;
        int bñ4 = 0;
        int bñT = 0;

        int coT = 0;
        int comT = 0;
        int ofiT = 0;
        int salT = 0;


        int ca1 = 0;
        int cs1 = 0;
        int ba1 = 0;
        int co1 = 0;
        int come1 = 0;
        int ofi1 = 0;
        int sala1 = 0;
       
        
            
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label23.Visible = false;
            //txt_SCP1.Visible = false;
            //Label11.Visible = false;
            //txt_SCP2.Visible = false;
            //Label40.Visible = false;
            //Label24.Visible = false;
            //txt_TCP1.Visible = false;
            //Label12.Visible = false;
            //txt_TCP2.Visible = false;
            //Label41.Visible = false;

            //Label26.Visible = false;
            //txt_SCS1.Visible = false;
            //Label53.Visible = false;
            //txt_SCS2.Visible = false;
            //Label43.Visible = false;
            //Label27.Visible = false;
            //txt_TCS1.Visible = false;
            //Label54.Visible = false;
            //txt_TCS2.Visible = false;
            //Label44.Visible = false;
            //Label28.Visible = false;
            //txt_CCS1.Visible = false;
            //Label55.Visible = false;
            //txt_CCS2.Visible = false;
            //Label45.Visible = false;


            //Label30.Visible = false;
            //txt_SB1.Visible = false;
            //Label17.Visible = false;
            //txt_SB2.Visible = false;
            //Label47.Visible = false;
            //Label31.Visible = false;
            //txt_TB1.Visible = false;
            //Label18.Visible = false;
            //txt_TB2.Visible = false;
            //Label48.Visible = false;
            //Label32.Visible = false;
            //txt_CB1.Visible = false;
            //Label20.Visible = false;
            //txt_CB2.Visible = false;
            //Label49.Visible = false;

            //Label36.Visible = false;
            //txt_SSal1.Visible = false;
            //Label21.Visible = false;
            //txt_SSal2.Visible = false;
            //Label22.Visible = false;

            //Label33.Visible = false;
            //txt_POfi1.Visible = false;
            //Label6.Visible = false;
            //txt_POfi2.Visible = false;
            //Label7.Visible = false;
            //Label34.Visible = false;
            //txt_SOfi1.Visible = false;
            //Label01.Visible = false;
            //txt_SOfi2.Visible = false;
            //Label3.Visible = false;

            //Label38.Visible = false;
            //txt_Pcom1.Visible = false;
            //Label4.Visible = false;
            //txt_PCom2.Visible = false;
            //Label51.Visible = false;

            //Label37.Visible = false;
            //txt_PCoc1.Visible = false;
            //Label2.Visible = false;
            //txt_PCoc2.Visible = false;
            //Label50.Visible = false;

        }


        public void btnCotizar_Click(object sender, EventArgs e)
        {

            //try
            //{
            //    datoscotizador idc = new datoscotizador
            //    {
            //        Cuarto_Principal = Convert.ToInt32(ddl_CO.SelectedIndex + 1),
            //        Cuartos_secundarios = Convert.ToInt32(ddl_CS.SelectedIndex + 1),
            //        Cantidad_Baños = Convert.ToInt32(1),
            //        Cocina = Convert.ToInt32(txtcoc.Text),
            //        Comedor = Convert.ToInt32(txtcome.Text),
            //        Oficina = Convert.ToInt32(txtofice.Text),
            //        Acabado = Convert.ToInt32(ddl_acabado.SelectedIndex + 1 ),//*txt_acabado.Text),
            //        Plantas = Convert.ToInt32(ddl_plantas.SelectedIndex + 1),
            //        Sala = Convert.ToInt32(txtsal.Text)
            //    };

            //    Itrabajadores tr = new Mtrabajadores();
            //    Idatoscotizador dac = new Mdatoscotizador();
            //    dac.InsertarDatoCotizador(idc);

            //    idc.IDD = variable_cotizacion;

            //    if (ddl_acabado.SelectedIndex+1 /*Convert.ToInt32(txt_acabado.Text) */== 1)
            //    {
            //        cp1 = Convert.ToInt32(txtdimp.Text) * Convert.ToInt32(TextBox10.Text);
            //        cp2 = Convert.ToInt32(TextBox8.Text) * Convert.ToInt32(TextBox8.Text);
            //        cp3 = Convert.ToInt32(TextBox9.Text) * Convert.ToInt32(TextBox12.Text);
            //        cpT = cp1 + cp2 + cp3;

            //        csS1 = Convert.ToInt32(txtdimp0.Text) * Convert.ToInt32(TextBox13.Text);
            //        css2 = Convert.ToInt32(TextBox14.Text) * Convert.ToInt32(TextBox15.Text);
            //        css3 = Convert.ToInt32(TextBox16.Text) * Convert.ToInt32(TextBox17.Text);
            //        css4 = Convert.ToInt32(TextBox23.Text) * Convert.ToInt32(TextBox24.Text);
            //        cssT = csS1 + css2 + css3 + css4;

            //        bñ1 = Convert.ToInt32(txtdimp1.Text) * Convert.ToInt32(TextBox18.Text); ;
            //        bñ2 = Convert.ToInt32(TextBox19.Text) * Convert.ToInt32(TextBox20.Text); 
            //        bñ3 = Convert.ToInt32(TextBox21.Text) * Convert.ToInt32(TextBox22.Text); 
            //        bñ4 = Convert.ToInt32(TextBox25.Text) * Convert.ToInt32(TextBox16.Text); 
            //        bñT = bñ1 + bñ2 + bñ3 + bñ4;

            //        coT = Convert.ToInt32(txtdimco.Text) * Convert.ToInt32(TextBox1.Text);

            //        comT= Convert.ToInt32(TextBox2.Text) * Convert.ToInt32(TextBox3.Text);

            //        ofiT= Convert.ToInt32(TextBox4.Text) * Convert.ToInt32(TextBox5.Text);

            //        salT= Convert.ToInt32(TextBox6.Text) * Convert.ToInt32(TextBox7.Text);







            //        //ca1 = Convert.ToInt32(txtdimp.Text);
            //        //cs1 = Convert.ToInt32(txtdims.Text);
            //        //ba1 = Convert.ToInt32(txtdimba.Text);
            //        //co1 = Convert.ToInt32(txtdimco.Text);
            //        //come1 = Convert.ToInt32(txtdimcome.Text);
            //        //ofi1 = Convert.ToInt32(txtdimofi.Text);
            //        //sala1 = Convert.ToInt32(txtsal.Text);
            //        cpT = (cpT * idc.Cuarto_Principal) * preciob;
            //        cssT = (cssT * idc.Cuartos_secundarios) * preciob;
            //        bñT = (bñT * idc.Cantidad_Baños) * preciob;
            //        coT = (coT * idc.Cocina) * preciob;
            //        comT = (comT * idc.Comedor) * preciob;
            //        ofiT = (ofiT * idc.Oficina) * preciob;
            //        salT = (salT * idc.Sala) * preciob;
            //        preciototal = cpT + cssT + bñT + coT + comT + ofiT + salT;


            //    }

            //    else if(ddl_acabado.SelectedIndex + 1/*Convert.ToInt32(txt_acabado.Text)*/  == 2)
            //    {
            //        cp1 = Convert.ToInt32(txtdimp.Text) * Convert.ToInt32(TextBox10.Text);
            //        cp2 = Convert.ToInt32(TextBox8.Text) * Convert.ToInt32(TextBox8.Text);
            //        cp3 = Convert.ToInt32(TextBox9.Text) * Convert.ToInt32(TextBox12.Text);
            //        cpT = cp1 + cp2 + cp3;

            //        csS1 = Convert.ToInt32(txtdimp0.Text) * Convert.ToInt32(TextBox13.Text);
            //        css2 = Convert.ToInt32(TextBox14.Text) * Convert.ToInt32(TextBox15.Text);
            //        css3 = Convert.ToInt32(TextBox16.Text) * Convert.ToInt32(TextBox17.Text);
            //        css4 = Convert.ToInt32(TextBox23.Text) * Convert.ToInt32(TextBox24.Text);
            //        cssT = csS1 + css2 + css3 + css4;

            //        bñ1 = Convert.ToInt32(txtdimp1.Text) * Convert.ToInt32(TextBox18.Text); ;
            //        bñ2 = Convert.ToInt32(TextBox19.Text) * Convert.ToInt32(TextBox20.Text); ;
            //        bñ3 = Convert.ToInt32(TextBox21.Text) * Convert.ToInt32(TextBox22.Text); ;
            //        bñ4 = Convert.ToInt32(TextBox25.Text) * Convert.ToInt32(TextBox16.Text); ;
            //        bñT = bñ1 + bñ2 + bñ3 + bñ4;

            //        coT = Convert.ToInt32(txtdimco.Text) * Convert.ToInt32(TextBox1.Text);

            //        comT = Convert.ToInt32(TextBox2.Text) * Convert.ToInt32(TextBox3.Text);

            //        ofiT = Convert.ToInt32(TextBox4.Text) * Convert.ToInt32(TextBox5.Text);

            //        salT = Convert.ToInt32(TextBox6.Text) * Convert.ToInt32(TextBox7.Text);

            //        //ca1 = Convert.ToInt32(txtdimp.Text);
            //        //cs1 = Convert.ToInt32(txtdims.Text);
            //        //ba1 = Convert.ToInt32(txtdimba.Text);
            //        //co1 = Convert.ToInt32(txtdimco.Text);
            //        //come1 = Convert.ToInt32(txtdimcome.Text);
            //        //ofi1 = Convert.ToInt32(txtdimofi.Text);
            //        //sala1 = Convert.ToInt32(txtsal.Text);
            //        cpT = (cpT * idc.Cuarto_Principal) * preciop;
            //        cssT = (cssT * idc.Cuartos_secundarios) * preciop;
            //        bñT = (bñT * idc.Cantidad_Baños) * preciop;
            //        coT = (coT * idc.Cocina) * preciop;
            //        comT = (comT * idc.Comedor) * preciop;
            //        ofiT = (ofiT * idc.Oficina) * preciop;
            //        salT = (salT * idc.Sala) * preciop;
            //        preciototal = cpT + cssT + bñT + coT + comT + ofiT + salT;





            //    }
            //    lblprecio.Text = preciototal.ToString();
            //    //lblprecio.Text = "$ "+  preciototal.ToString();



            //}
            //catch (Exception ex)
            //{
            //    MostarMensajeError("error al insertar");

            //}

            //Enviarcorreo();



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
        protected void btn_limpiar_Click(object sender, EventArgs e)
        {
            lblprecio.Text = string.Empty;

        }
        public void Enviarcorreo()
        {


        }
        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }
        protected void botonlimpiar_Click(object sender, EventArgs e)
        {
            //MultiView1.ActiveViewIndex = 0;
            MostarMensajeError("error al insertar");
        }
        public void Button1_Click(object sender, EventArgs e)
        {
            //List<datoscotizador> listallave = id.ListarDatosCotizador();
            //var listaaa = listallave.Select(x => x.IDD).LastOrDefault();

            //try
            //{
            //    datoscliente dc = new datoscliente
            //    {
            //        IDC=Convert.ToInt32(TextBox17.Text),
            //        Nombre= TextBox28.Text,
            //        Apell1=TextBox29.Text,
            //        Apell2=TextBox29.Text,
            //        correo=TextBox30.Text,
            //        telefono=Convert.ToInt32(TextBox31.Text)
            //    };

            //    Cotizacion cz = new Cotizacion
            //    {
            //        Id_cliente = Convert.ToInt32(TextBox17.Text),
            //        Total_Cotizacion = Convert.ToInt32(preciototal),
            //        IDD = Convert.ToInt32(listaaa.ToString()),
            //        Fecha =DateTime.Now,
            //        Localizacion= TextBox32.Text,
            //        Observaciones= TextBox32.Text

            //    };

            //    string para = "joxx2011@gmail.com";
            //    string asunto = " Cotizacion Studio z & R";
            //    string cuerpo = "Se a realizado una nueva cotizacion."+"\n"+"El precio de la cotizacion es "+lblprecio.Text+'\n'+"El nombre del cliente es"+dc.Nombre +dc.Apell1;


            //    if (new correo().EnviarCorreo(para, asunto, cuerpo))
            //    {

            //    }
            //    else
            //    {

            //    }


            //}
            //catch (Exception)
            //{

            //    throw;
            //}
        }
        protected void btnCotizar_Click1(object sender, EventArgs e)
        {
            string descripB = "";
            string descripBS = "";
            string descriBñ = "";
            string descriCoc = "";
            string descriCom = "";
            string descriOfi = "";
            string descriSal = "";
            int dCuartoPrincipal = Convert.ToInt32(ddl_baños.SelectedIndex + 1);
            int dCuartoSecundario = Convert.ToInt32(ddl_CS.SelectedIndex + 1);
            int dBaños = Convert.ToInt32(ddl_baños.SelectedIndex + 1);
            int dCocina = Convert.ToInt32(DropDownList1.SelectedIndex + 1);
            int dComedor = Convert.ToInt32(DropDownList3.SelectedIndex + 1);
            int dOfi = Convert.ToInt32(DropDownList2.SelectedIndex + 1);
            int dSalas = Convert.ToInt32(DropDownList4.SelectedIndex + 1);
            switch (dCuartoPrincipal)
            {
                case 1:
                    descripB = txt_PCP1.Text + "x" + txt_PCP2.Text + "mts.";
                    break;
                case 2:
                    descripB = txt_PCP1.Text + "x" + txt_PCP2.Text + "mts.," + txt_PCS1.Text + "x" + txt_PCS2.Text + "mts.";
                    break;
                case 3:
                    descripB = txt_PCP1.Text + "x" + txt_PCP2.Text + "mts.," + txt_PCS1.Text + "x" + txt_PCS2.Text + "mts." + txt_TCP1.Text + "x" + txt_TCP2.Text + "mts.";
                    break;
            }
            switch (dCuartoSecundario)
            {
                case 1:
                    descripBS = txt_PCS1.Text + "x" + txt_PCS2.Text + "mts.";
                    break;
                case 2:
                    descripBS = txt_PCS1.Text + "x" + txt_PCS2.Text + "mts.," + txt_SCS1.Text + "x" + txt_SCS2.Text + "mts.";
                    break;
                case 3:
                    descripBS = txt_PCS1.Text + "x" + txt_PCS2.Text + "mts.," + txt_SCS1.Text + "x" + txt_SCS2.Text + "mts." + txt_TCS1.Text + "x" + txt_TCS2.Text + "mts.";
                    break;
                case 4:
                    descripBS = txt_PCS1.Text + "x" + txt_PCS2.Text + "mts.," + txt_SCS1.Text + "x" + txt_SCS2.Text + "mts." + txt_TCS1.Text + "x" + txt_TCS2.Text + "mts." +
                        txt_CCS1.Text + "x" + txt_CCS2.Text + "mts.";
                    break;
            }
            switch (dBaños)
            {
                case 1:
                    descriBñ = txt_PB1.Text + "x" + txt_PB2.Text + "mts.";
                    break;
                case 2:
                    descriBñ = txt_PB1.Text + "x" + txt_PB2.Text + "mts.," + txt_SB1.Text + "x"
                    + txt_SB2.Text + "mts.";
                    break;
                case 3:
                    descriBñ = txt_PB1.Text + "x" + txt_PB2.Text + "mts.," + txt_SB1.Text + "x" + txt_SB2.Text + "mts." + txt_TB1.Text + "x" + txt_TB2.Text + "mts.";
                    break;
                case 4:
                    descriBñ = txt_PB1.Text + "x" + txt_PB2.Text + "mts.," + txt_SB1.Text + "x" + txt_SB2.Text + "mts." + txt_TB1.Text + "x" + txt_TB2.Text + "mts."
                     + txt_CB1.Text + "x" + txt_CB2.Text + "mts.";
                    break;
            }
            switch (dCocina)
            {
                case 2:
                    descriCoc = txt_PCoc1.Text + "x" + txt_PCoc2.Text + "mts.";
                    break;
                default:
                    break;
            }
            switch (dComedor)
            {
                case 2:
                    descriCom = txt_Pcom1.Text + "x" + txt_PCom2.Text + "mts.";
                    break;
                default:
                    break;
            }
            switch (dOfi)
            {
                case 2:
                    descriOfi = txt_POfi1.Text + "x" + txt_POfi2.Text + "mts.";
                    break;
                case 3:
                    descriOfi = txt_POfi1.Text + "x" + txt_POfi2.Text + "mts."
                        + txt_SOfi1.Text + "x" + txt_SOfi2.Text + "mts.";
                    break;
                default:
                    break;

            }
            switch (dSalas)
            {
                case 1:
                    descriSal = txt_PSal1.Text + "x" + txt_PSal2.Text + "mts.";
                    break;
                case 2:
                    descriSal = txt_PSal1.Text + "x" + txt_PSal2.Text + "mts."
                        + txt_SSal1.Text + "x" + txt_SSal2.Text + "mts.";
                    break;
            }
            try
            {
                datoscotizador idc = new datoscotizador
                {
                    Cuarto_Principal = Convert.ToInt32(ddl_CO.SelectedIndex + 1),
                    Cuartos_secundarios = Convert.ToInt32(ddl_CS.SelectedIndex + 1),
                    Cantidad_Banios = Convert.ToInt32(ddl_baños.SelectedIndex + 1),
                    Cocina = Convert.ToInt32(DropDownList1.SelectedIndex + 1),
                    Comedor = Convert.ToInt32(DropDownList3.SelectedIndex + 1),
                    Oficina = Convert.ToInt32(DropDownList2.SelectedIndex + 1),
                    Acabado = Convert.ToInt32(ddl_acabado.SelectedIndex + 1),////*txt_acabado.Text),
                    Plantas = Convert.ToInt32(ddl_plantas.SelectedIndex + 1),
                    Sala = Convert.ToInt32(DropDownList4.SelectedIndex + 1),
                    // //Descripcion = "Acabado "+ddl_acabado.SelectedItem
                    // //+ "Cuarto Principal: " + txtdimp+"x"+TextBox10.Text+  
                    Descripcion = "Acabado" + ddl_acabado.SelectedIndex + 1 + "CuartoPrincipal: " + descripB + "Cuartos Secundarios: "
                    + descripBS + "Baños: " + descriBñ + "Cocinas: " + descriCoc + "Comedores: "
                    + descriCom + "Oficinas: " + descriOfi + "Plantas:" + ddl_plantas.SelectedIndex + 1
                    + "Salas" + descriSal


                };
                Idatoscotizador dac = new Mdatoscotizador();
                dac.InsertarDatoCotizador(idc);

                if (ddl_acabado.SelectedIndex + 1 == 1)
                {
                    int opc = Convert.ToInt32(ddl_CO.SelectedIndex + 1);

                    switch (opc)
                    {
                        case 1:
                            cp1 = Convert.ToInt32(txt_PCP1.SelectedIndex + 1) * Convert.ToInt32(txt_PCP2.SelectedIndex + 1);
                            cpT = cp1;
                            break;
                        case 2:
                            cp1 = Convert.ToInt32(txt_PCP1.SelectedIndex + 1) * Convert.ToInt32(txt_PCP2.SelectedIndex + 1);
                            cp2 = Convert.ToInt32(txt_SCP1.SelectedIndex + 1) * Convert.ToInt32(txt_SCP2.SelectedIndex + 1);
                            cpT = cp1 + cp2;
                            break;
                        case 3:
                            cp1 = Convert.ToInt32(txt_PCP1.SelectedIndex + 1) * Convert.ToInt32(txt_PCP2.SelectedIndex + 1);
                            cp2 = Convert.ToInt32(txt_SCP1.SelectedIndex + 1) * Convert.ToInt32(txt_SCP2.SelectedIndex + 1);
                            cp3 = Convert.ToInt32(txt_TCP1.SelectedIndex + 1) * Convert.ToInt32(txt_TCP2.SelectedIndex + 1);
                            cpT = cp1 + cp2 + cp3;
                            break;

                    }


                    int opc2 = Convert.ToInt32(ddl_CS.SelectedIndex + 1);
                    switch (opc2)
                    {
                        case 1:
                            csS1 = Convert.ToInt32(txt_PCS1.SelectedIndex + 1) * Convert.ToInt32(txt_PCS2.SelectedIndex + 1);
                            css2 = 0 * 0;
                            css3 = 0 * 0;
                            css4 = 0 * 0;
                            cssT = csS1 + css2 + css3 + css4;
                            break;
                        case 2:
                            csS1 = Convert.ToInt32(txt_PCS1.SelectedIndex + 1) * Convert.ToInt32(txt_PCS2.SelectedIndex + 1);
                            css2 = Convert.ToInt32(txt_SCS1.SelectedIndex + 1) * Convert.ToInt32(txt_SCS2.SelectedIndex + 1);
                            css3 = 0 * 0;
                            css4 = 0 * 0;
                            cssT = csS1 + css2 + css3 + css4;
                            break;
                        case 3:
                            csS1 = Convert.ToInt32(txt_PCS1.SelectedIndex + 1) * Convert.ToInt32(txt_PCS2.SelectedIndex + 1);
                            css2 = Convert.ToInt32(txt_SCS1.SelectedIndex + 1) * Convert.ToInt32(txt_SCS2.SelectedIndex + 1);
                            css3 = Convert.ToInt32(txt_TCS1.SelectedIndex + 1) * Convert.ToInt32(txt_TCS2.SelectedIndex + 1);
                            css4 = 0 * 0;
                            cssT = csS1 + css2 + css3 + css4;
                            break;
                        case 4:
                            csS1 = Convert.ToInt32(txt_PCS1.SelectedIndex + 1) * Convert.ToInt32(txt_PCS2.SelectedIndex + 1);
                            css2 = Convert.ToInt32(txt_SCS1.SelectedIndex + 1) * Convert.ToInt32(txt_SCS2.SelectedIndex + 1);
                            css3 = Convert.ToInt32(txt_TCS1.SelectedIndex + 1) * Convert.ToInt32(txt_TCS2.SelectedIndex + 1);
                            css4 = Convert.ToInt32(txt_CCS1.SelectedIndex + 1) * Convert.ToInt32(txt_CCS2.SelectedIndex + 1);
                            cssT = csS1 + css2 + css3 + css4;
                            break;
                    }




                    int opc3 = Convert.ToInt32(ddl_baños.SelectedIndex + 1);
                    switch (opc3)
                    {
                        case 1:
                            bñ1 = Convert.ToInt32(txt_PB1.SelectedIndex + 1) * Convert.ToInt32(txt_PB1.SelectedIndex + 1);
                            bñ2 = 0 * 0;
                            bñ3 = 0 * 0;
                            bñ4 = 0 * 0;
                            bñT = bñ1 + bñ2 + bñ3 + bñ4;
                            break;
                        case 2:
                            bñ1 = Convert.ToInt32(txt_PB1.SelectedIndex + 1) * Convert.ToInt32(txt_PB1.SelectedIndex + 1);
                            bñ2 = Convert.ToInt32(txt_SB1.SelectedIndex + 1) * Convert.ToInt32(txt_SB2.SelectedIndex + 1);
                            bñ3 = 0 * 0;
                            bñ4 = 0 * 0;
                            bñT = bñ1 + bñ2 + bñ3 + bñ4;
                            break;
                        case 3:
                            bñ1 = Convert.ToInt32(txt_PB1.SelectedIndex + 1) * Convert.ToInt32(txt_PB1.SelectedIndex + 1);
                            bñ2 = Convert.ToInt32(txt_SB1.SelectedIndex + 1) * Convert.ToInt32(txt_SB2.SelectedIndex + 1);
                            bñ3 = Convert.ToInt32(txt_TB1.SelectedIndex + 1) * Convert.ToInt32(txt_TB2.SelectedIndex + 1);
                            bñ4 = 0 * 0;
                            bñT = bñ1 + bñ2 + bñ3 + bñ4;

                            break;
                        case 4:
                            bñ1 = Convert.ToInt32(txt_PB1.SelectedIndex + 1) * Convert.ToInt32(txt_PB1.SelectedIndex + 1);
                            bñ2 = Convert.ToInt32(txt_SB1.SelectedIndex + 1) * Convert.ToInt32(txt_SB2.SelectedIndex + 1);
                            bñ3 = Convert.ToInt32(txt_TB1.SelectedIndex + 1) * Convert.ToInt32(txt_TB2.SelectedIndex + 1);
                            bñ4 = Convert.ToInt32(txt_CB1.SelectedIndex + 1) * Convert.ToInt32(txt_CB2.SelectedIndex + 1);
                            bñT = bñ1 + bñ2 + bñ3 + bñ4;

                            break;
                    }

                    int ofi1 = 0;
                    int ofi2 = 0;
                    int opc4 = Convert.ToInt32(DropDownList2.SelectedIndex + 1);
                    switch (opc4)
                    {
                        case 1:
                            ofi1 = Convert.ToInt32(txt_POfi1.SelectedIndex + 1) * Convert.ToInt32(txt_POfi2.SelectedIndex + 1);
                            ofi2 = 0 * 0;
                            ofiT = ofi1 + ofi2;
                            break;
                        case 2:

                            ofi1 = Convert.ToInt32(txt_POfi1.SelectedIndex + 1) * Convert.ToInt32(txt_POfi2.SelectedIndex + 1);
                            ofi2 = Convert.ToInt32(txt_SOfi1.SelectedIndex + 1) * Convert.ToInt32(txt_SOfi2.SelectedIndex + 1);
                            break;
                        default:
                            break;
                    }

                    int sala1 = 0;
                    int sala2 = 0;
                    int opc5 = Convert.ToInt32(DropDownList4.SelectedIndex + 1);
                    switch (opc5)
                    {
                        case 1:
                            sala1 = Convert.ToInt32(txt_PSal1.SelectedIndex + 1) * Convert.ToInt32(txt_PSal2.SelectedIndex + 1);
                            sala2 = 0 * 0;
                            salT = sala1 + sala2;
                            break;
                        case 2:

                            sala1 = Convert.ToInt32(txt_PSal1.SelectedIndex + 1) * Convert.ToInt32(txt_PSal2.SelectedIndex + 1);
                            sala2 = Convert.ToInt32(txt_SSal1.SelectedIndex + 1) * Convert.ToInt32(txt_SSal2.SelectedIndex + 1);
                            salT = sala1 + sala2;
                            break;
                    }

                    int opc6 = Convert.ToInt32(DropDownList3.SelectedIndex + 1);
                    switch (opc6)
                    {
                        case 2:
                            comT = Convert.ToInt32(txt_Pcom1.SelectedIndex + 1) * Convert.ToInt32(txt_PCom2.SelectedIndex + 1);
                            break;
                        default:
                            comT = 0;
                            break;
                    }

                    int opc7 = Convert.ToInt32(DropDownList1.SelectedIndex + 1);
                    switch (opc7)
                    {
                        case 2:
                            coT = Convert.ToInt32(txt_PCoc1.SelectedIndex + 1) * Convert.ToInt32(txt_PCoc2.SelectedIndex + 1);
                            break;
                        default:
                            coT = 0;
                            break;
                    }

                    int precioEscalera = 0;
                    if (ddl_plantas.SelectedIndex + 1 == 1)
                    {
                        precioEscalera = 0;
                    }
                    else if (ddl_plantas.SelectedIndex + 1 == 2)
                    {
                        precioEscalera = 2900;
                    }
                    cpT = (cpT * idc.Cuarto_Principal) * preciob;
                    cssT = (cssT * idc.Cuartos_secundarios) * preciob;
                    bñT = (bñT * idc.Cantidad_Banios) * preciob;
                    coT = (coT * idc.Cocina) * preciob;
                    comT = (comT * idc.Comedor) * preciob;
                    ofiT = (ofiT * idc.Oficina) * preciob;
                    salT = (salT * idc.Sala) * preciob;
                    preciototal = cpT + cssT + bñT + coT + comT + ofiT + salT + precioEscalera;
                }

                else if (ddl_acabado.SelectedIndex + 1 == 2)
                {
                    int opc = Convert.ToInt32(ddl_CO.SelectedIndex + 1);

                    switch (opc)
                    {
                        case 1:
                            cp1 = Convert.ToInt32(txt_PCP1.SelectedIndex + 1) * Convert.ToInt32(txt_PCP2.SelectedIndex + 1);
                            cpT = cp1;
                            break;
                        case 2:
                            cp1 = Convert.ToInt32(txt_PCP1.SelectedIndex + 1) * Convert.ToInt32(txt_PCP2.SelectedIndex + 1);
                            cp2 = Convert.ToInt32(txt_SCP1.SelectedIndex + 1) * Convert.ToInt32(txt_SCP2.SelectedIndex + 1);
                            cpT = cp1 + cp2;
                            break;
                        case 3:
                            cp1 = Convert.ToInt32(txt_PCP1.SelectedIndex + 1) * Convert.ToInt32(txt_PCP2.SelectedIndex + 1);
                            cp2 = Convert.ToInt32(txt_SCP1.SelectedIndex + 1) * Convert.ToInt32(txt_SCP2.SelectedIndex + 1);
                            cp3 = Convert.ToInt32(txt_TCP1.SelectedIndex + 1) * Convert.ToInt32(txt_TCP2.SelectedIndex + 1);
                            cpT = cp1 + cp2 + cp3;
                            break;

                    }


                    int opc2 = Convert.ToInt32(ddl_CS.SelectedIndex + 1);
                    switch (opc2)
                    {
                        case 1:
                            csS1 = Convert.ToInt32(txt_PCS1.SelectedIndex + 1) * Convert.ToInt32(txt_PCS2.SelectedIndex + 1);
                            css2 = 0 * 0;
                            css3 = 0 * 0;
                            css4 = 0 * 0;
                            cssT = csS1 + css2 + css3 + css4;
                            break;
                        case 2:
                            csS1 = Convert.ToInt32(txt_PCS1.SelectedIndex + 1) * Convert.ToInt32(txt_PCS2.SelectedIndex + 1);
                            css2 = Convert.ToInt32(txt_SCS1.SelectedIndex + 1) * Convert.ToInt32(txt_SCS2.SelectedIndex + 1);
                            css3 = 0 * 0;
                            css4 = 0 * 0;
                            cssT = csS1 + css2 + css3 + css4;
                            break;
                        case 3:
                            csS1 = Convert.ToInt32(txt_PCS1.SelectedIndex + 1) * Convert.ToInt32(txt_PCS2.SelectedIndex + 1);
                            css2 = Convert.ToInt32(txt_SCS1.SelectedIndex + 1) * Convert.ToInt32(txt_SCS2.SelectedIndex + 1);
                            css3 = Convert.ToInt32(txt_TCS1.SelectedIndex + 1) * Convert.ToInt32(txt_TCS2.SelectedIndex + 1);
                            css4 = 0 * 0;
                            cssT = csS1 + css2 + css3 + css4;
                            break;
                        case 4:
                            csS1 = Convert.ToInt32(txt_PCS1.SelectedIndex + 1) * Convert.ToInt32(txt_PCS2.SelectedIndex + 1);
                            css2 = Convert.ToInt32(txt_SCS1.SelectedIndex + 1) * Convert.ToInt32(txt_SCS2.SelectedIndex + 1);
                            css3 = Convert.ToInt32(txt_TCS1.SelectedIndex + 1) * Convert.ToInt32(txt_TCS2.SelectedIndex + 1);
                            css4 = Convert.ToInt32(txt_CCS1.SelectedIndex + 1) * Convert.ToInt32(txt_CCS2.SelectedIndex + 1);
                            cssT = csS1 + css2 + css3 + css4;
                            break;
                    }




                    int opc3 = Convert.ToInt32(ddl_baños.SelectedIndex + 1);
                    switch (opc3)
                    {
                        case 1:
                            bñ1 = Convert.ToInt32(txt_PB1.SelectedIndex + 1) * Convert.ToInt32(txt_PB1.SelectedIndex + 1);
                            bñ2 = 0 * 0;
                            bñ3 = 0 * 0;
                            bñ4 = 0 * 0;
                            bñT = bñ1 + bñ2 + bñ3 + bñ4;
                            break;
                        case 2:
                            bñ1 = Convert.ToInt32(txt_PB1.SelectedIndex + 1) * Convert.ToInt32(txt_PB1.SelectedIndex + 1);
                            bñ2 = Convert.ToInt32(txt_SB1.SelectedIndex + 1) * Convert.ToInt32(txt_SB2.SelectedIndex + 1);
                            bñ3 = 0 * 0;
                            bñ4 = 0 * 0;
                            bñT = bñ1 + bñ2 + bñ3 + bñ4;
                            break;
                        case 3:
                            bñ1 = Convert.ToInt32(txt_PB1.SelectedIndex + 1) * Convert.ToInt32(txt_PB1.SelectedIndex + 1);
                            bñ2 = Convert.ToInt32(txt_SB1.SelectedIndex + 1) * Convert.ToInt32(txt_SB2.SelectedIndex + 1);
                            bñ3 = Convert.ToInt32(txt_TB1.SelectedIndex + 1) * Convert.ToInt32(txt_TB2.SelectedIndex + 1);
                            bñ4 = 0 * 0;
                            bñT = bñ1 + bñ2 + bñ3 + bñ4;

                            break;
                        case 4:
                            bñ1 = Convert.ToInt32(txt_PB1.SelectedIndex + 1) * Convert.ToInt32(txt_PB1.SelectedIndex + 1);
                            bñ2 = Convert.ToInt32(txt_SB1.SelectedIndex + 1) * Convert.ToInt32(txt_SB2.SelectedIndex + 1);
                            bñ3 = Convert.ToInt32(txt_TB1.SelectedIndex + 1) * Convert.ToInt32(txt_TB2.SelectedIndex + 1);
                            bñ4 = Convert.ToInt32(txt_CB1.SelectedIndex + 1) * Convert.ToInt32(txt_CB2.SelectedIndex + 1);
                            bñT = bñ1 + bñ2 + bñ3 + bñ4;

                            break;
                    }

                    int ofi1 = 0;
                    int ofi2 = 0;
                    int opc4 = Convert.ToInt32(DropDownList2.SelectedIndex + 1);
                    switch (opc4)
                    {
                        case 1:
                            ofi1 = Convert.ToInt32(txt_POfi1.SelectedIndex + 1) * Convert.ToInt32(txt_POfi2.SelectedIndex + 1);
                            ofi2 = 0 * 0;
                            ofiT = ofi1 + ofi2;
                            break;
                        case 2:

                            ofi1 = Convert.ToInt32(txt_POfi1.SelectedIndex + 1) * Convert.ToInt32(txt_POfi2.SelectedIndex + 1);
                            ofi2 = Convert.ToInt32(txt_SOfi1.SelectedIndex + 1) * Convert.ToInt32(txt_SOfi2.SelectedIndex + 1);
                            break;
                        default:
                            break;
                    }

                    int sala1 = 0;
                    int sala2 = 0;
                    int opc5 = Convert.ToInt32(DropDownList4.SelectedIndex + 1);
                    switch (opc5)
                    {
                        case 1:
                            sala1 = Convert.ToInt32(txt_PSal1.SelectedIndex + 1) * Convert.ToInt32(txt_PSal2.SelectedIndex + 1);
                            sala2 = 0 * 0;
                            salT = sala1 + sala2;
                            break;
                        case 2:

                            sala1 = Convert.ToInt32(txt_PSal1.SelectedIndex + 1) * Convert.ToInt32(txt_PSal2.SelectedIndex + 1);
                            sala2 = Convert.ToInt32(txt_SSal1.SelectedIndex + 1) * Convert.ToInt32(txt_SSal2.SelectedIndex + 1);
                            salT = sala1 + sala2;
                            break;
                    }

                    int opc6 = Convert.ToInt32(DropDownList3.SelectedIndex + 1);
                    switch (opc6)
                    {
                        case 2:
                            comT = Convert.ToInt32(txt_Pcom1.SelectedIndex + 1) * Convert.ToInt32(txt_PCom2.SelectedIndex + 1);
                            break;
                        default:
                            comT = 0;
                            break;
                    }

                    int opc7 = Convert.ToInt32(DropDownList1.SelectedIndex + 1);
                    switch (opc7)
                    {
                        case 2:
                            coT = Convert.ToInt32(txt_PCoc1.SelectedIndex + 1) * Convert.ToInt32(txt_PCoc2.SelectedIndex + 1);
                            break;
                        default:
                            coT = 0;
                            break;
                    }

                    int precioEscalera = 0;
                    if (ddl_plantas.SelectedIndex + 1 == 1)
                    {
                        precioEscalera = 0;
                    }
                    else if (ddl_plantas.SelectedIndex + 1 == 2)
                    {
                        precioEscalera = 2900;
                    }
                    cpT = (cpT * idc.Cuarto_Principal) * preciop;
                    cssT = (cssT * idc.Cuartos_secundarios) * preciop;
                    bñT = (bñT * idc.Cantidad_Banios) * preciop;
                    coT = (coT * idc.Cocina) * preciop;
                    comT = (comT * idc.Comedor) * preciop;
                    ofiT = (ofiT * idc.Oficina) * preciop;
                    salT = (salT * idc.Sala) * preciop;
                    preciototal = cpT + cssT + bñT + coT + comT + ofiT + salT + precioEscalera;
                }
                lblprecio.Text = "Precio total  $  " + preciototal.ToString();
            }
            catch (Exception ex)
            {
                MostarMensajeError("error al insertar");
            }
            Enviarcorreo();
        }
        protected void botonlimpiar_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Cotizador.aspx");
        }

        protected void ddl_CO_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (ddl_CO.SelectedIndex + 1 == 1)
            {
                Label23.Visible = false;
                txt_SCP1.Visible = false;
                Label11.Visible = false;
                txt_SCP2.Visible = false;
                Label40.Visible = false;
                Label24.Visible = false;
                txt_TCP1.Visible = false;
                Label12.Visible = false;
                txt_TCP2.Visible = false;
                Label41.Visible = false;
            }
            else if (ddl_CO.SelectedIndex + 1 == 2)
            {
                Label23.Visible = true;
                txt_SCP1.Visible = true;
                Label11.Visible = true;
                txt_SCP2.Visible = true;
                Label40.Visible = true;
                Label24.Visible = false;
                txt_TCP1.Visible = false;
                Label12.Visible = false;
                txt_TCP2.Visible = false;
                Label41.Visible = false;

            }
            else if (ddl_CO.SelectedIndex + 1 == 3)
            {
                Label23.Visible = true;
                txt_SCP1.Visible = true;
                Label11.Visible = true;
                txt_SCP2.Visible = true;
                Label40.Visible = true;
                Label24.Visible = true;
                txt_TCP1.Visible = true;
                Label12.Visible = true;
                txt_TCP2.Visible = true;
                Label41.Visible = true;
            }
        }

        protected void ddl_CS_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_CS.SelectedIndex + 1 == 1)
            {
                Label26.Visible = false;
                txt_SCS1.Visible = false;
                Label53.Visible = false;
                txt_SCS2.Visible = false;
                Label43.Visible = false;
                Label27.Visible = false;
                txt_TCS1.Visible = false;
                Label54.Visible = false;
                txt_TCS2.Visible = false;
                Label44.Visible = false;
                Label28.Visible = false;
                txt_CCS1.Visible = false;
                Label55.Visible = false;
                txt_CCS2.Visible = false;
                Label45.Visible = false;
            }
            else if (ddl_CS.SelectedIndex + 1 == 2)
            {
                Label26.Visible = true;
                txt_SCS1.Visible = true;
                Label53.Visible = true;
                txt_SCS2.Visible = true;
                Label43.Visible = true;
                Label27.Visible = false;
                txt_TCS1.Visible = false;
                Label54.Visible = false;
                txt_TCS2.Visible = false;
                Label44.Visible = false;
                Label28.Visible = false;
                txt_CCS1.Visible = false;
                Label55.Visible = false;
                txt_CCS2.Visible = false;
                Label45.Visible = false;

            }
            else if (ddl_CS.SelectedIndex + 1 == 3)
            {
                Label26.Visible = true;
                txt_SCS1.Visible = true;
                Label53.Visible = true;
                txt_SCS2.Visible = true;
                Label43.Visible = true;
                Label27.Visible = true;
                txt_TCS1.Visible = true;
                Label54.Visible = true;
                txt_TCS2.Visible = true;
                Label44.Visible = true;
                Label28.Visible = false;
                txt_CCS1.Visible = false;
                Label55.Visible = false;
                txt_CCS2.Visible = false;
                Label45.Visible = false;
            }
            else if (ddl_CS.SelectedIndex + 1 == 4)
            {
                Label26.Visible = true;
                txt_SCS1.Visible = true;
                Label53.Visible = true;
                txt_SCS2.Visible = true;
                Label43.Visible = true;
                Label27.Visible = true;
                txt_TCS1.Visible = true;
                Label54.Visible = true;
                txt_TCS2.Visible = true;
                Label44.Visible = true;
                Label28.Visible = true;
                txt_CCS1.Visible = true;
                Label55.Visible = true;
                txt_CCS2.Visible = true;
                Label45.Visible = true;
            }
        }

        protected void ddl_baños_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_baños.SelectedIndex + 1 == 1)
            {
                Label30.Visible = false;
                txt_SB1.Visible = false;
                Label17.Visible = false;
                txt_SB2.Visible = false;
                Label47.Visible = false;
                Label31.Visible = false;
                txt_TB1.Visible = false;
                Label18.Visible = false;
                txt_TB2.Visible = false;
                Label48.Visible = false;
                Label32.Visible = false;
                txt_CB1.Visible = false;
                Label20.Visible = false;
                txt_CB2.Visible = false;
                Label49.Visible = false;
            }
            else if (ddl_baños.SelectedIndex + 1 == 2)
            {
                Label30.Visible = true;
                txt_SB1.Visible = true;
                Label17.Visible = true;
                txt_SB2.Visible = true;
                Label47.Visible = true;
                Label31.Visible = false;
                txt_TB1.Visible = false;
                Label18.Visible = false;
                txt_TB2.Visible = false;
                Label48.Visible = false;
                Label32.Visible = false;
                txt_CB1.Visible = false;
                Label20.Visible = false;
                txt_CB2.Visible = false;
                Label49.Visible = false;

            }
            else if (ddl_baños.SelectedIndex + 1 == 3)
            {
                Label30.Visible = true;
                txt_SB1.Visible = true;
                Label17.Visible = true;
                txt_SB2.Visible = true;
                Label47.Visible = true;
                Label31.Visible = true;
                txt_TB1.Visible = true;
                Label18.Visible = true;
                txt_TB2.Visible = true;
                Label48.Visible = true;
                Label32.Visible = false;
                txt_CB1.Visible = false;
                Label20.Visible = false;
                txt_CB2.Visible = false;
                Label49.Visible = false;
            }
            else if (ddl_baños.SelectedIndex + 1 == 4)
            {
                Label30.Visible = true;
                txt_SB1.Visible = true;
                Label17.Visible = true;
                txt_SB2.Visible = true;
                Label47.Visible = true;
                Label31.Visible = true;
                txt_TB1.Visible = true;
                Label18.Visible = true;
                txt_TB2.Visible = true;
                Label48.Visible = true;
                Label32.Visible = true;
                txt_CB1.Visible = true;
                Label20.Visible = true;
                txt_CB2.Visible = true;
                Label49.Visible = true;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex + 1 == 2)
            {
                Label37.Visible = true;
                txt_PCoc1.Visible = true;
                Label2.Visible = true;
                txt_PCoc2.Visible = true;
                Label50.Visible = true;
            }
            else if (DropDownList1.Text == "Ninguno(a)")
            {
                Label37.Visible = false;
                txt_PCoc1.Visible = false;
                Label2.Visible = false;
                txt_PCoc2.Visible = false;
                Label50.Visible = false;
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedIndex + 1 == 1)
            {
                Label38.Visible = false;
                txt_Pcom1.Visible = false;
                Label4.Visible = false;
                txt_PCom2.Visible = false;
                Label51.Visible = false;
            }
            else if (DropDownList3.SelectedIndex + 1 == 2)
            {
                Label38.Visible = true;
                txt_Pcom1.Visible = true;
                Label4.Visible = true;
                txt_PCom2.Visible = true;
                Label51.Visible = true;
            }

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedIndex + 1 == 1)
            {
                Label33.Visible = false;
                txt_POfi1.Visible = false;
                Label6.Visible = false;
                txt_POfi2.Visible = false;
                Label7.Visible = false;
                Label34.Visible = false;
                txt_SOfi1.Visible = false;
                Label01.Visible = false;
                txt_SOfi2.Visible = false;
                Label3.Visible = false;
            }
            else if (DropDownList2.SelectedIndex + 1 == 2)
            {
                Label33.Visible = true;
                txt_POfi1.Visible = true;
                Label6.Visible = true;
                txt_POfi2.Visible = true;
                Label7.Visible = true;
                Label34.Visible = false;
                txt_SOfi1.Visible = false;
                Label01.Visible = false;
                txt_SOfi2.Visible = false;
                Label3.Visible = false;
            }

            else if (DropDownList2.SelectedIndex + 1 == 3)
            {
                Label33.Visible = true;
                txt_POfi1.Visible = true;
                Label6.Visible = true;
                txt_POfi2.Visible = true;
                Label7.Visible = true;
                Label34.Visible = true;
                txt_SOfi1.Visible = true;
                Label01.Visible = true;
                txt_SOfi2.Visible = true;
                Label3.Visible = true;
            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList4.SelectedIndex + 1 == 1)
            {
                Label36.Visible = false;
                txt_SSal1.Visible = false;
                Label21.Visible = false;
                txt_SSal2.Visible = false;
                Label22.Visible = false;
            }

            else if (DropDownList4.SelectedIndex + 1 == 2)
            {
                Label36.Visible = true;
                txt_SSal1.Visible = true;
                Label21.Visible = true;
                txt_SSal2.Visible = true;
                Label22.Visible = true;

            }
        }
    }
}
    
