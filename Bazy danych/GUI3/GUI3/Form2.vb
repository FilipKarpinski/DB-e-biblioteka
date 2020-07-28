Imports MySql.Data.MySqlClient
Public Class Form2

    Dim connection As MySqlConnection
    Dim command As MySqlCommand


    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        connection = New MySqlConnection
        connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"
        connection.Open()
        Dim command As New MySqlCommand("INSERT INTO uzytkownik(identyfikator,imie,nazwisko,haslo,login) VALUES (@id,@im,@na,@ha,@lo)", connection)
        Dim command2 As New MySqlCommand("INSERT INTO uzytkownik_biblioteki(autoryzacja, adres_ulica, adres_miasto,adres_lokal,id_szkoly,identyfikator,identyfikator_admina) VALUES (@aut,@au,@am,@al,@ids,@id,@ida)", connection)
        Dim command3 As New MySqlCommand("SELECT MAX(identyfikator) FROM uzytkownik", connection)
        Dim command6 As New MySqlCommand("INSERT INTO uczen(identyfikator,id_klasy,nr_legitymacji) VALUES (@id,@idk,@nl)", connection)

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

        command2.Parameters.AddWithValue("@aut", 0)
        command2.Parameters.AddWithValue("@au", TextBox6.Text)
        command2.Parameters.AddWithValue("@am", TextBox5.Text)
        command2.Parameters.AddWithValue("@ids", TextBox8.Text)
        command2.Parameters.AddWithValue("@id", it + 1)
        command2.Parameters.AddWithValue("@ida", DBNull.Value)

        command6.Parameters.AddWithValue("@id", it + 1)
        command6.Parameters.AddWithValue("@idk", TextBox10.Text)
        command6.Parameters.AddWithValue("@nl", TextBox9.Text)
        pomoc.Text = it + 1
        If table5.Rows.Count = 0 And iReturn2 = True And TextBox1.Text <> String.Empty And TextBox2.Text <> String.Empty And TextBox3.Text <> String.Empty And TextBox4.Text <> String.Empty And TextBox5.Text <> String.Empty And TextBox6.Text <> String.Empty And TextBox7.Text <> String.Empty And TextBox8.Text <> String.Empty And TextBox9.Text <> String.Empty And TextBox10.Text <> String.Empty Then
            Try
                command.ExecuteNonQuery()
                command2.ExecuteNonQuery()
                command6.ExecuteNonQuery()
                iReturn = True
            Catch ex As MySqlException
                MsgBox("Bledne dane")
            End Try
            If iReturn = True Then
                MsgBox("Sukces")
                Close()
            Else
                Dim command7 As New MySqlCommand("DELETE FROM `uzytkownik_biblioteki` WHERE `uzytkownik_biblioteki`.`identyfikator` = '" & pomoc.Text & "'", connection)
                command7.ExecuteNonQuery()
                Dim command4 As New MySqlCommand("DELETE FROM `uzytkownik` WHERE `uzytkownik`.`identyfikator` = '" & pomoc.Text & "'", connection)
                command4.ExecuteNonQuery()
            End If
        Else
            MsgBox("Bledne dane")
        End If
        connection.Close()
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Close()
    End Sub
End Class