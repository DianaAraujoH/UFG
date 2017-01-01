Imports MySql.Data.MySqlClient
Imports ClassLibrary1.sv.gob.cnr.rrhh
Namespace sv.gob.cnr.rrhh
    Public Class DAO
        Public dt As New DataTable
        Dim cadenaconex As New conexion()
        Dim cadenacon As String = cadenaconex.conex
        Dim con As New MySqlConnection(cadenacon)
        Dim sqlinsert As String = "insert into persona (nombre, apellido) values"
        Dim sqlselect As String = "select * from persona"
        Dim sqldelet As String = "delete from persona where idpersona="
        Dim sqlupdate As String = "update persona set "


        Public Sub Agregar(ByVal nombre As String, ByVal apellido As String)
            sqlinsert &= "('" & nombre & "','" & apellido & "')"
            MsgBox(sqlinsert)
            Try
                con.Open()
                Dim cmd As New MySqlCommand(sqlinsert, con)
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                MsgBox("Registro Nuevo")
                con.Close()
            Catch ex As Exception
                MsgBox(ex)
            End Try

        End Sub

        '  Public Sub Eliminar(ByVal idpersona As String)
        '     sqldelet &= "@idpersona"
        '    MsgBox(sqldelet)
        '   Try
        '      con.Open()
        'Dim cmd As New MySqlCommand(sqldelet, con)
        '       cmd.Parameters.Add("@idpersona", MySqlDbType.Int32, 11).Value = idpersona
        '      cmd.ExecuteNonQuery()
        '     cmd.Dispose
        '    MsgBox("Registro Eliminado")
        '   con.Close()
        'Catch ex As Exception
        '    MsgBox(ex)
        'End Try

        '        End Sub

        Public Sub Eliminar(ByVal idpersona As String)
            sqldelet &= idpersona
            Try

                con.Open()
                Dim cmd As New MySqlCommand(sqldelet, con)
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                MsgBox("Regisro eliminado")
                con.Close()
            Catch ex As Exception
                MsgBox(ex)
            End Try

        End Sub

        Public Sub Modificar(ByVal idpersona As String, ByVal nombre As String, ByVal apellido As String)
            sqlupdate &= "nombre = '" & nombre & "', apellido ='" & apellido & "' where idpersona =" & idpersona
            Try
                con.Open()
                Dim cmd As New MySqlCommand(sqlupdate, con)
                cmd.ExecuteNonQuery()
                cmd.Dispose()
                MsgBox("Registro modificado")
                con.Close()
            Catch ex As Exception
                MsgBox(ex)
            End Try

        End Sub

        Public Function selectt() As DataTable
            dt.Clear()
            con.Open()
            ' Dim cmd As New MySqlCommand(sqlselect, con)
            Dim da As New MySqlDataAdapter(sqlselect, con)
            da.Fill(dt)
            con.Close()
            Return dt
        End Function


    End Class
End Namespace
