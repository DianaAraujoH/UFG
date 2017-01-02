<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/> 
        <link href="css/styles.css" rel="stylesheet"/>
    <title></title>
</head>
<body>
     <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#"> INGENIERIA DE SOFTWARE </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#">Inicio</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#">Sobre Nosotros</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#">Contacto</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

   
    <div id="personas" class="container">
    
    <div class="container" id="contenedor">
      <div id="titulo" class="text-center h1 text-primary"> 
          <br />
          PERSONAS</div>  
                
    <form class="form-signin"  runat="server">
   
            Codigo Persona <asp:TextBox ID="txtidpersona" class="form-control"  runat="server"></asp:TextBox>
        <br />
        Nombre<asp:TextBox ID="txtnombre" class="form-control" runat="server"></asp:TextBox>
        <br />
        Apellido<asp:TextBox ID="txtapellido" class="form-control" runat="server"></asp:TextBox>
        <br />
        <br />
        <div id="botones" class="form-group-lg">
        <asp:Button ID="btnIngresar" class="btn btn-lg btn-primary" runat="server" Text="Ingresar" />
       
        <asp:Button ID="btModificar" class="btn btn-lg btn-success" runat="server" Text="Modificar" />
        <asp:Button ID="btnEliminar"  class="btn btn-lg btn-danger" runat="server" Text="Eliminar" />
            </div>
        <br />
        <br />

         <div id="GridView" class="">
        
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="392px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
            </div>

    </form>     
    
    </div>

       
        </div>


    <script type="text/javascript" src="js/jquery.js"></script>
        
</body>
</html>