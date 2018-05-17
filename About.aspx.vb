Imports System.Data
Imports System.Data.SqlClient
Partial Class About
    Inherits Page

    Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

        CargaDatos()

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
    Sub CargaDatos()

        Dim ProductCatId As String = Request.QueryString("ProductCategoryKey")

        Dim queryString As String = "Select * From [AdventureWorksDW2014].[dbo].[DimProductCategory] where ProductCategoryKey = " + ProductCatId + ""

        Dim ds As DataSet = GetData(queryString)
        If (ds.Tables.Count > 0) Then

            TxtProductCategory.Text = ds.Tables(0).Rows(0)("ProductCategoryKey")
            TxtCategoryAlternate.Text = ds.Tables(0).Rows(0)("ProductCategoryAlternateKey")
            TxtEnglishProductCategory.Text = ds.Tables(0).Rows(0)("EnglishProductCategoryName")
            TxtSpanishProductCategory.Text = ds.Tables(0).Rows(0)("SpanishProductCategoryName")
            TxtFrenchProductCategory.Text = ds.Tables(0).Rows(0)("FrenchProductCategoryName")

        Else
            'Message.Text = "Unable to connect to the database."
        End If

    End Sub

End Class