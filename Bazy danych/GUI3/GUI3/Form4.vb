Imports MySql.Data.MySqlClient
Public Class Form4
    Dim connection As New MySqlConnection("server=127.0.0.1;userid=root;password=;database=biblioteka")

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        connection = New MySqlConnection
        connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"
        connection.Open()
        Dim command As New MySqlCommand("INSERT INTO uzytkownik(identyfikator,imie,nazwisko,haslo,login) VALUES (@id,@im,@na,@ha,@lo)", connection)
        Dim command2 As New MySqlCommand("INSERT INTO uzytkownik_biblioteki(autoryzacja, adres_ulica, adres_miasto,adres_lokal,id_szkoly,identyfikator,identyfikator_admina) VALUES (@aut,@au,@am,@al,@ids,@id,@ida)", connection)
        Dim command3 As New MySqlCommand("SELECT MAX(identyfikator) FROM uzytkownik", connection)
        Dim command6 As New MySqlCommand("INSERT INTO nauczyciel(identyfikator) VALUES (@id)", connection)

        Dim command8 As New MySqlCommand("INSERT INTO nauczyciel_dziedzina(identyfikator,id_dziedzina) VALUES (@id,@idd)", connection)
        Dim command9 As New MySqlCommand("INSERT INTO nauczyciel_dziedzina(identyfikator,id_dziedzina) VALUES (@id,@idd2)", connection)

        Dim command5 As New MySqlCommand("SELECT login from uzytkownik where login ='" & TextBox1.Text & "'", connection)
        Dim adapter5 As New MySqlDataAdapter(command5)
        Dim table5 As New DataTable()
        adapter5.Fill(table5)
        Dim iReturn As Boolean
        Dim iReturn2 As Boolean
        Dim it As Int16
        it = command3.ExecuteScalar()
        iReturn = False
        iReturn2 = False
        command.Parameters.AddWithValue("@id", it + 1)
        command.Parameters.AddWithValue("@im", TextBox3.Text)
        command.Parameters.AddWithValue("@na", TextBox4.Text)
        command.Parameters.AddWithValue("@ha", TextBox2.Text)
        command.Parameters.AddWithValue("@lo", TextBox1.Text)
        Try
            Dim MyInteger As Integer = Convert.ToInt16(TextBox7.Text)
            iReturn2 = True
            command2.Parameters.AddWithValue("@al", MyInteger)
        Catch ex As Exception
            iReturn2 = False
        End Try

        command2.Parameters.AddWithValue("@aut", 1)
        command2.Parameters.AddWithValue("@au", TextBox6.Text)
        command2.Parameters.AddWithValue("@am", TextBox5.Text)
        command2.Parameters.AddWithValue("@ids", TextBox8.Text)
        command2.Parameters.AddWithValue("@id", it + 1)
        command2.Parameters.AddWithValue("@ida", DBNull.Value)

        command6.Parameters.AddWithValue("@id", it + 1)
        command8.Parameters.AddWithValue("@id", it + 1)
        command8.Parameters.AddWithValue("@idd", TextBox9.Text)
        command9.Parameters.AddWithValue("@id", it + 1)
        command9.Parameters.AddWithValue("@idd2", TextBox10.Text)
        pomoc.Text = it + 1
        If table5.Rows.Count = 0 And iReturn2 = True And TextBox1.Text <> String.Empty And TextBox2.Text <> String.Empty And TextBox3.Text <> String.Empty And TextBox4.Text <> String.Empty And TextBox5.Text <> String.Empty And TextBox6.Text <> String.Empty And TextBox7.Text <> String.Empty And TextBox8.Text <> String.Empty And TextBox9.Text <> String.Empty Then
            Try
                command.ExecuteNonQuery()
                command2.ExecuteNonQuery()
                command6.ExecuteNonQuery()
                command8.ExecuteNonQuery()
                If TextBox10.Text <> String.Empty Then
                    command9.ExecuteNonQuery()
                End If
                iReturn = True
            Catch ex As MySqlException
                MsgBox("Bledne dane")
            End Try
            If iReturn = True Then
                MsgBox("Sukces")
                Close()
            Else

                Dim command12 As New MySqlCommand("DELETE FROM `nauczyciel_dziedzina` WHERE `nauczyciel_dziedzina`.`identyfikator` = '" & pomoc.Text & "'", connection)
                command12.ExecuteNonQuery()
                Dim command11 As New MySqlCommand("DELETE FROM `nauczyciel` WHERE `nauczyciel`.`identyfikator` = '" & pomoc.Text & "'", connection)
                command11.ExecuteNonQuery()
                Dim command7 As New MySqlCommand("DELETE FROM `uzytkownik_biblioteki` WHERE `uzytkownik_biblioteki`.`identyfikator` = '" & pomoc.Text & "'", connection)
                command7.ExecuteNonQuery()
                Dim command4 As New MySqlCommand("DELETE FROM `uzytkownik` WHERE `uzytkownik`.`identyfikator` = '" & pomoc.Text & "'", connection)
                command4.ExecuteNonQuery()
            End If
        Else
            MsgBox("Bledne dane2")
        End If
        connection.Close()

    End Sub

    Private Sub TextBox9_TextChanged(sender As Object, e As EventArgs) Handles TextBox9.TextChanged

    End Sub

    Private Sub TextBox10_TextChanged(sender As Object, e As EventArgs) Handles TextBox10.TextChanged

    End Sub
End Class