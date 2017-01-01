Imports MySql.Data.MySqlClient
Namespace sv.gob.cnr.rrhh

    Public Class conexion
        Public Function conex() As String
            Dim server As String = "localhost"
            Dim database As String = "repaso"
            Dim user As String = "root"
            Dim pass As String = ""
            Dim port As String = "3306"

            ' Dim cadenaConexion As String = "server=localhost;database=repaso;user id=root;password=evolution;port=" & port & ";"

            Dim cadenaConexion As String = "server=" & server & ";database=" & database & ";user id=" & user & ";password=" & pass & ";port=" & port & ";"

            Dim mensaje As String
            Try

                Dim conn As New MySqlConnection(cadenaConexion)

                conn.Open() 'Abrimos la Base de datos
                mensaje = "conexion exitosa"
                conn.Close() 'Cerramos la Base de Datos
            Catch ex As Exception
                mensaje = Convert.ToString(ex)
            End Try

            Return cadenaConexion
        End Function





    End Class

End Namespace

