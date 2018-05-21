<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <table style="width:100%;">
        <tr>
            <td style="width: 140px">
                <asp:Label ID="lblRegistro" runat="server" Text="Registro Id"></asp:Label>
            </td>
            <td style="width: 654px">
                <asp:TextBox ID="TxtRegistroId" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">
                <asp:Label ID="lblNumEmp" runat="server" Text="Número Empleado"></asp:Label>
            </td>
            <td style="width: 654px">
                <asp:TextBox ID="TxtNumEmp" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">
                <asp:Button ID="btnEditar" runat="server" Text="Editar" Width="130px" BackColor="#000066" ForeColor="White" BorderColor="#000066" />
            </td>
            <td style="width: 654px">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="130px" BackColor="#000066" ForeColor="White" BorderColor="#000066" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td style="width: 654px">
                <asp:GridView ID="gv1" runat="server" OnPageIndexChanging="gv1_PageIndexChanging" style="margin:0 auto;"
    CellPadding="4" AllowPaging="True" EmptyDataText="No hay Ideas Pendientes a Revisión." AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="RegistroId" HeaderText="RegistroId" ReadOnly="True" 
                            SortExpression="RegistroId">
            <ControlStyle Width="10px" />
            <FooterStyle Width="10px" />
            <HeaderStyle Width="10px" />
                        </asp:BoundField>
            <asp:BoundField DataField="NumeroEmpleado" HeaderText="Numero Empleado" ReadOnly="True" 
                            SortExpression="NumeroEmpleado">
            <ControlStyle Width="110px" />
            <FooterStyle Width="110px" />
            <HeaderStyle Width="110px" />
                        </asp:BoundField>
            <asp:BoundField DataField="FechaEnvio" HeaderText="Fecha Envio" ReadOnly="True" 
                            SortExpression="FechaEnvio">
            <ControlStyle Width="120px" />
            <FooterStyle Width="120px" />
            <HeaderStyle Width="120px" />
                        </asp:BoundField>
            <asp:BoundField DataField="idDepartamento" HeaderText="id Depto" ReadOnly="True" 
                            SortExpression="idDepartamento">
            <ControlStyle Width="120px" />
            <FooterStyle Width="120px" />
            <HeaderStyle Width="120px" />
                        </asp:BoundField>
            <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" 
                            SortExpression="Status">
            <ControlStyle Width="120px" />
            <FooterStyle Width="120px" />
            <HeaderStyle Width="120px" />
                        </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText="Next" 
            PreviousPageText="Previous"/>

    
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left"/>
        <RowStyle BackColor="White" ForeColor="#003399"/>
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
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
