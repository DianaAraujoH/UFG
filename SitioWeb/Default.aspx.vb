
Imports ClassLibrary1.sv.gob.cnr.rrhh
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim mantdb As New DAO
    Dim idpModf As String

    Protected Sub GridView1_Load(sender As Object, e As EventArgs) Handles GridView1.Load
        GridView1.DataSource = mantdb.selectt
        GridView1.DataBind()

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim persona As GridViewRow = GridView1.SelectedRow
        txtidpersona.Text = persona.Cells(1).Text
        txtnombre.Text = persona.Cells(2).Text
        txtapellido.Text = persona.Cells(3).Text

    End Sub

    Protected Sub btModificar_Click(sender As Object, e As EventArgs) Handles btModificar.Click
        Dim idpersona As String = txtidpersona.Text
        Dim nombre As String = txtnombre.Text
        Dim apellido As String = txtapellido.Text

        mantdb.Modificar(idpersona, nombre, apellido)
        GridView1.DataBind()


    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Dim nombre As String = txtnombre.Text
        Dim apellido As String = txtapellido.Text
        mantdb.Agregar(nombre, apellido)
        GridView1.DataBind()
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Dim idpersona As String = txtidpersona.Text
        mantdb.Eliminar(idpersona)
        GridView1.DataBind()
    End Sub


End Class

