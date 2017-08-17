<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="IndexDashboard.aspx.cs" Inherits="CotizadorUI.IndexDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="right_col" role="main">
        

     
        <br />
        <br />
        <br />
        <div align="center">

            <canvas id="canvas" width="500" height="500"></canvas>
        </div>
        <script>
            var canvas = document.getElementById("canvas");
            var ctx = canvas.getContext("2d");
            var color = '#ffffff';
            ctx.strokeStyle = '#ffffff';
            ctx.lineWidth = 10;
            ctx.lineCap = 'round';
            ctx.shadowBlur = 15;
            ctx.shadowColor = '#ffffff';

            function degToRoad(degree) {
                var factor = Math.PI / 180;
                return factor * degree;
            }

            function renderTime() {
                var now = new Date();
                var today = now.toDateString();
                var time = now.toLocaleTimeString();
                var hours = now.getHours();
                var minutes = now.getMinutes();
                var seconds = now.getSeconds();
                var milliseconds = now.getMilliseconds();
                var newSconds = seconds + (milliseconds / 1000);

                //background
                var gradient = ctx.createRadialGradient(250, 250, 1, 250, 250, 300);
                gradient.addColorStop(0, '#0d7691');
                gradient.addColorStop(1, '#22525e');

                ctx.fillStyle = gradient;
                //ctx.fillStyle = '#333333';
                ctx.fillRect(0, 0, 500, 500);

                //hours
                ctx.beginPath();
                ctx.arc(250, 250, 200, degToRoad(270), degToRoad((hours * 15) - 90));
                ctx.stroke();

                //minutes
                ctx.beginPath();
                ctx.arc(250, 250, 170, degToRoad(270), degToRoad((minutes * 6) - 90));
                ctx.stroke();

                //seconds

                ctx.beginPath();
                ctx.arc(250, 250, 140, degToRoad(270), degToRoad((newSconds * 6) - 90));
                ctx.stroke();

                //date
                ctx.fillStyle = color;
                ctx.font = '24px Arial';
                ctx.fillText(today, 170, 250);

                //time
                ctx.fillStyle = color;
                ctx.font = '15px Arial';
                ctx.fillText(time, 170, 280);
            }

            setInterval(renderTime, 40);
        </script>
        <script src="https://static.jsbin.com/js/render/edit.js?4.0.4"></script>
        <script>jsbinShowEdit && jsbinShowEdit({ "static": "https://static.jsbin.com", "root": "https://jsbin.com" });</script>
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-1656750-34', 'auto');
            ga('require', 'linkid', 'linkid.js');
            ga('require', 'displayfeatures');
            ga('send', 'pageview');

        </script>

  </div>



</asp:Content>
