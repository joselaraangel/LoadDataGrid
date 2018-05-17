
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits Page

    Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)


    End Sub

    Function GetData(ByVal queryString As String) As DataSet

        Dim connectionString As String = "Data Source=JOSE;Initial Catalog=AdventureWorksDW2014;Integrated Security=True;"

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
            "Select * From [AdventureWorksDW2014].[dbo].[DimProductCategory]"

        If (TxtProducto.Text <> "") Then
            queryString += " where ProductCategoryKey = '" + TxtProducto.Text + "'"
        End If

        If (TxtNombre.Text <> "") Then
            queryString += " where ProductCategoryAlternateKey = '" + TxtNombre.Text + "'"
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
        If (TxtProducto.Text <> "") Then
            Dim Productkey As String = TxtProducto.Text

            Response.Redirect("About.aspx?ProductCategoryKey=" + Productkey)

        End If

    End Sub
End Class