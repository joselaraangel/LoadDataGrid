<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
        <table style="width:100%;">
            <tr>
                <td style="width: 265px; font-size: medium;">
                    RegistroId</td>
                <td>
                    <asp:TextBox ID="TxtRegistroId" runat="server" Height="22px" Width="132px" Font-Size="Medium"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 265px">
                    <asp:Label ID="lblNumEmp" runat="server" Text="Número Empleado" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtNumEmp" runat="server" Height="22px" Width="132px" Font-Size="Medium"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 265px">
                    <asp:Label ID="lblFechaEnv" runat="server" Text="Fecha Envio" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtFechaEnv" runat="server" Height="22px" Width="200px" Font-Size="Medium"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 265px">
                    <asp:Label ID="lblidDepto" runat="server" Text="idDepartamento" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DplistDepto" runat="server" Font-Size="Medium" Height="24px" Width="140px" DataSourceID="SqlDsDepto" DataTextField="NombreDeppto" DataValueField="idDepartamento">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 265px; height: 35px;">
                    <asp:Label ID="lblStatus" runat="server" Text="Status" Font-Size="Medium"></asp:Label>
                </td>
                <td style="height: 35px">
                    <asp:DropDownList ID="DplistStatus" runat="server" Font-Size="Medium" Height="24px" Width="140px">
                        <asp:ListItem Value="0">No revisado</asp:ListItem>
                        <asp:ListItem Value="1">Aprobado</asp:ListItem>
                        <asp:ListItem Value="2">Declinado</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 35px"></td>
                <td style="height: 35px"></td>
            </tr>
            <tr>
                <td style="width: 265px">
                    <asp:Label ID="lblComent" runat="server" Text="Comentarios" Font-Size="Medium"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtComent" runat="server" Height="22px" Width="310px" Font-Size="Medium"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 265px">
                    <asp:Button ID="BtnActualizar" runat="server" BackColor="#000066" BorderColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="34px" Text="Actualizar" Width="125px" />
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDsDepto" runat="server" ConnectionString="<%$ ConnectionStrings:AppServerConnectionString %>" SelectCommand="SELECT [idDepartamento], [NombreDeppto] FROM [Departamento]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
</asp:Content>
