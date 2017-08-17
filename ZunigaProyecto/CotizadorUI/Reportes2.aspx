<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Reportes2.aspx.cs" Inherits="CotizadorUI.Reportes2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>



    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Reportes</h3>
                </div>

                <div class="title_right">
                    <!-- <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>-->
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="container body-content">
                <div class="alert alert-success" visible="false" id="mensaje" runat="server">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong id="textoMensaje" runat="server"></strong>
                </div>
                <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong id="textoMensajeError" runat="server"></strong>
                </div>
                <!-- form input mask -->
                <div class="col-md-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Nuevo Reporte</h2>

                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">

                            <br />
                            <form class="form-horizontal form-label-left">





                                <canvas id="myChart"></canvas>


                                <script>
                                    let myChart = document.getElementById('myChart').getContext('2d');

                                    // Global Options
                                    Chart.defaults.global.defaultFontFamily = 'Lato';
                                    Chart.defaults.global.defaultFontSize = 18;
                                    Chart.defaults.global.defaultFontColor = '#777';
                                    var java1 = '<%=prueba%>';
            var java2 = '<%=prueba2%>';
                                    let massPopChart = new Chart(myChart, {
                                        type: 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
                                        data: {
                                            labels: ['standard', 'Plus'],
                                            datasets: [{
                                                label: 'Acabados',
                                                data: [
                                                 java1,
                                                 java2
                                                ],
                                                //backgroundColor:'green',
                                                backgroundColor: [

                                                  'rgba(255, 206, 86, 0.6)',
                                                  'rgba(75, 192, 192, 0.6)',
                                                  'rgba(153, 102, 255, 0.6)',
                                                  'rgba(255, 159, 64, 0.6)',
                                                  'rgba(255, 99, 132, 0.6)'
                                                ],
                                                borderWidth: 1,
                                                borderColor: '#777',
                                                hoverBorderWidth: 3,
                                                hoverBorderColor: '#000'
                                            }]
                                        },
                                        options: {
                                            title: {
                                                display: true,
                                                text: 'tipo de acabado durante el ultimo mes',
                                                fontSize: 25
                                            },
                                            legend: {
                                                display: true,
                                                position: 'right',
                                                labels: {
                                                    fontColor: '#000'
                                                }
                                            },
                                            layout: {
                                                padding: {
                                                    left: 50,
                                                    right: 0,
                                                    bottom: 0,
                                                    top: 0
                                                }
                                            },
                                            tooltips: {
                                                enabled: true
                                            }
                                        }
                                    });
                                </script>
                        </div>


                        </form>

                    </div>

                </div>
            </div>
            <!-- /form input mask -->

            <!-- /image cropping -->

            <!-- /page content -->


        </div>

    </div>

</asp:Content>
