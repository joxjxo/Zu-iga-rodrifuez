<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewLogin.aspx.cs" Inherits="NuevaInterfazBase.NewLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
  
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentelella Alela! | </title>

    <!-- Bootstrap -->
    <link href="Dashboard/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="Dashboard/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="Dashboard/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="Dashboard/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="Dashboard/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
  w      <div class="animate form login_form">
          <section class="login_content">
            <form runat="server">
              <h1>Login </h1>
              <div>
               <%-- <asp:Textbox id="txtUsername" " type="text" class="form-control"  required="" runat="server"/>
           --%>  
        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
              </div>
              <div>
             <%--   <asp:Textbox id="txtPassword"  type="password" class="form-control" required="" runat="server"/>
            --%>
                  <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server"></asp:TextBox>
              </div>
              <div>
                  
              </div>
                <asp:Button ID="btnIngresar" runat="server" Text="Button" CssClass="btn btn-default submit" OnClick="btn_Ingresar_Click"/>
              <div class="clearfix"></div>

              <div class="separator">
                
              </div>
            </form>
          </section>
        </div>

       
      </div>
    </div>
  </body>
</html>

