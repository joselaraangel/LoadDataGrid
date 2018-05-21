Imports System.Data
Imports System.Data.SqlClient
Partial Class About
    Inherits Page
    Dim connectionString As String = "Data Source=JOSE;Initial Catalog=AppServer;Integrated Security=True;"
    Public Property MessageBox As Object

    Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

        If (TxtRegistroId.Text = "") Then
            CargaDatos()
        End If

        TxtRegistroId.Enabled = False

    End Sub
    Function GetData(ByVal queryString As String) As DataSet

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

        Dim Registro As String = Request.QueryString("RegistroId")

        Dim queryString As String = "Select * From [AppServer].[dbo].[SolicitudRegistro] where RegistroId = " + Registro + ""

        Dim ds As DataSet = GetData(queryString)
        If (ds.Tables.Count > 0) Then

            TxtRegistroId.Text = ds.Tables(0).Rows(0)("RegistroId")
            TxtNumEmp.Text = ds.Tables(0).Rows(0)("NumeroEmpleado")
            TxtFechaEnv.Text = ds.Tables(0).Rows(0)("FechaEnvio")
            DplistDepto.SelectedValue = ds.Tables(0).Rows(0)("idDepartamento").ToString()
            DplistStatus.SelectedValue = ds.Tables(0).Rows(0)("Status").ToString()
            TxtComent.Text = ds.Tables(0).Rows(0)("Comentarios")

        Else
            'Message.Text = "Unable to connect to the database."
        End If

    End Sub
    Sub UpdateDatos()

        Dim con As New SqlConnection(connectionString)

        con.Open()


        Dim query As String = ("Update [AppServer].[dbo].[SolicitudRegistro] Set NumeroEmpleado=@NumEmp, FechaEnvio=@FechaE, idDepartamento=@idDepto, Status=@Stats, Comentarios=@Coment Where RegistroId = '" + TxtRegistroId.Text + "'")

        Dim cmd As New SqlCommand(query, con)


        cmd.Parameters.AddWithValue("NumEmp", TxtNumEmp.Text)
        cmd.Parameters.AddWithValue("FechaE", Convert.ToDateTime(TxtFechaEnv.Text))
        cmd.Parameters.AddWithValue("idDepto", DplistDepto.SelectedValue)
        cmd.Parameters.AddWithValue("Stats", DplistStatus.SelectedValue)
        cmd.Parameters.AddWithValue("Coment", TxtComent.Text)

        cmd.ExecuteNonQuery()
        cmd.Parameters.Clear()

        con.Close()


    End Sub
    Protected Sub BtnActualizar_Click(sender As Object, e As EventArgs) Handles BtnActualizar.Click

        UpdateDatos()

    End Sub
End Class