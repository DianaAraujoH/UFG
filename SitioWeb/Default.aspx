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
    <div id="personas" class="container">
    
    <div class="container" id="contenedor">
        
                
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