
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits Page

    Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)


    End Sub

    Function GetData(ByVal queryString As String) As DataSet

        Dim connectionString As String = "Data Source=JOSE;Initial Catalog=AppServer;Integrated Security=True;"

        Dim ds As New DataSet()

        Try

            Dim connection As New SqlConnection(connectionString)
            Dim adapter As New SqlDataAdapter(queryString, connection)

            adapter.Fill(ds)


        Catch ex As Exception

            'Message.Text = "Unable to connect to the database."

        End Try

        Return ds

    End Function
    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click

        Dim queryString As String =
            "Select * From [AppServer].[dbo].[SolicitudRegistro]"

        If (TxtRegistroId.Text <> "") Then
            queryString += " where RegistroId = '" + TxtRegistroId.Text + "'"
        End If

        If (TxtNumEmp.Text <> "") Then
            queryString += " where NumeroEmpleado = '" + TxtNumEmp.Text + "'"
        End If

        Dim ds As DataSet = GetData(queryString)
        If (ds.Tables.Count > 0) Then

            gv1.DataSource = ds
            gv1.DataBind()

        Else

            'Message.Text = "Unable to connect to the database."

        End If

    End Sub
    Protected Sub gv1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gv1.PageIndexChanging

    End Sub
    Protected Sub gv1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gv1.SelectedIndexChanged

    End Sub
    Protected Sub btnEditar_Click(sender As Object, e As EventArgs) Handles btnEditar.Click
        If (TxtRegistroId.Text <> "") Then
            Dim Registro As String = TxtRegistroId.Text

            Response.Redirect("About.aspx?RegistroId=" + Registro)

        End If

    End Sub
End Class