<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <table style="width:100%;">
        <tr>
            <td style="width: 140px">
                <asp:Label ID="lblProducto" runat="server" Text="Id Producto"></asp:Label>
            </td>
            <td style="width: 654px">
                <asp:TextBox ID="TxtProducto" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
            </td>
            <td style="width: 654px">
                <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td style="width: 654px">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="130px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td style="width: 654px">
                <asp:GridView ID="gv1" runat="server" OnPageIndexChanging="gv1_PageIndexChanging" style="margin:0 auto;"
    CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" EmptyDataText="No hay Ideas Pendientes a Revisión." AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ProductCategoryKey" HeaderText="CategoriaId" ReadOnly="True" 
                            SortExpression="CategoriaId">
            <ControlStyle Width="10px" />
            <FooterStyle Width="10px" />
            <HeaderStyle Width="10px" />
                        </asp:BoundField>
            <asp:BoundField DataField="ProductCategoryAlternateKey" HeaderText="Categoria A" ReadOnly="True" 
                            SortExpression="CategoriaIdAlternativa">
            <ControlStyle Width="110px" />
            <FooterStyle Width="110px" />
            <HeaderStyle Width="110px" />
                        </asp:BoundField>
            <asp:BoundField DataField="EnglishProductCategoryName" HeaderText="Categoria ENG" ReadOnly="True" 
                            SortExpression="CategoriaProductoIngles">
            <ControlStyle Width="120px" />
            <FooterStyle Width="120px" />
            <HeaderStyle Width="120px" />
                        </asp:BoundField>
            <asp:BoundField DataField="FrenchProductCategoryName" HeaderText="Categoria FRA" ReadOnly="True" 
                            SortExpression="CategoriaProductoFrances">
            <ControlStyle Width="120px" />
            <FooterStyle Width="120px" />
            <HeaderStyle Width="120px" />
                        </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#DC4141" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText="Next" 
            PreviousPageText="Previous" Mode="NumericFirstLast"/>

    
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center"/>
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333"/>
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
        <EmptyDataTemplate>
          <div style="width:100%;">
          <table style="margin: 0 auto; text-align:center">
          <tr>
            <td><asp:Label Text="No hay Ideas Pendientes a Revisión." runat="server" Font-Bold="true" Font-Size="Large" /></td>
          </tr>
          <tr>
            <td></td>
          </tr>
          </table>
          </div>

        </EmptyDataTemplate>
     
    </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

    

</asp:Content>
