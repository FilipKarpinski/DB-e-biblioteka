Imports MySql.Data.MySqlClient

Public Class Form5
    Dim connection As MySqlConnection
    Dim command As MySqlCommand
    Dim reader As MySqlDataReader
    Private Sub Form5_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        connection = New MySqlConnection
        connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"
        connection.Open()
        Dim command As New MySqlCommand("select login,haslo,imie,nazwisko FROM `uzytkownik` WHERE `uzytkownik`.`identyfikator` = '" & Form1.pomoc3.Text & "'", connection)
        Dim reader As MySqlDataReader
        reader = command.ExecuteReader()
        Dim it As String
        While reader.Read
            it = reader.Item("login")
            TextBox1.Text = it
            pomoc.Text = it
            it = reader.Item("haslo")
            TextBox2.Text = it
            it = reader.Item("imie")
            TextBox3.Text = it
            it = reader.Item("nazwisko")
            TextBox4.Text = it
        End While
        reader.Close()
        Dim command2 As New MySqlCommand("select adres_miasto,adres_ulica,adres_lokal,id_szkoly,autoryzacja FROM `uzytkownik_biblioteki` WHERE `uzytkownik_biblioteki`.`identyfikator` = '" & Form1.pomoc3.Text & "'", connection)
        Dim reader2 As MySqlDataReader
        reader2 = command2.ExecuteReader()
        Dim it2 As String
        While reader2.Read
            it2 = reader2.Item("adres_miasto")
            TextBox5.Text = it2
            it2 = reader2.Item("adres_ulica")
            TextBox6.Text = it2
            it2 = reader2.Item("adres_lokal")
            TextBox7.Text = it2
            it2 = reader2.Item("id_szkoly")
            TextBox8.Text = it2
            it2 = reader2.Item("autoryzacja")
            ComboBox1.Text = it2
        End While
        reader2.Close()
        Dim command3 As New MySqlCommand("select nr_legitymacji,id_klasy FROM `uczen` WHERE `uczen`.`identyfikator` = '" & Form1.pomoc3.Text & "'", connection)
        Dim reader3 As MySqlDataReader
        reader3 = command3.ExecuteReader()
        Dim it3 As String
        While reader3.Read
            it3 = reader3.Item("nr_legitymacji")
            TextBox9.Text = it3
            it3 = reader3.Item("id_klasy")
            TextBox10.Text = it3
        End While
        reader3.Close()
        connection.Close()
    End Sub
    Private Sub Button1_Click(sender As Object, e As EventArgs)
        Close()
    End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub

    Private Sub Button1_Click_1(sender As Object, e As EventArgs) Handles Button1.Click
        connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"
        connection.Open()
        Dim command As New MySqlCommand("update uzytkownik set imie=@im,nazwisko=@na,haslo=@ha,login=@lo where identyfikator='" & Form1.pomoc3.Text & "'", connection)
        Dim command2 As New MySqlCommand("update uzytkownik_biblioteki set autoryzacja=@aut,adres_ulica=@au,adres_miasto=@am,adres_lokal=@al,id_szkoly=@ids,identyfikator_admina=@ida where identyfikator='" & Form1.pomoc3.Text & "'", connection)
        Dim command6 As New MySqlCommand("update uczen set id_klasy=@idk,nr_legitymacji=@nl  where identyfikator='" & Form1.pomoc3.Text & "'", connection)

        Dim command5 As New MySqlCommand("SELECT login from uzytkownik where login ='" & TextBox1.Text & "'", connection)
        Dim adapter5 As New MySqlDataAdapter(command5)
        Dim table5 As New DataTable()
        adapter5.Fill(table5)
        Dim iReturn As Boolean
        Dim iReturn2 As Boolean
        Dim it As Int16
        iReturn = False
        iReturn2 = False
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

        command2.Parameters.AddWithValue("@aut", ComboBox1.Text)
        command2.Parameters.AddWithValue("@au", TextBox6.Text)
        command2.Parameters.AddWithValue("@am", TextBox5.Text)
        command2.Parameters.AddWithValue("@ids", TextBox8.Text)
        command2.Parameters.AddWithValue("@ida", Form1.pomoc.Text)

        command6.Parameters.AddWithValue("@idk", TextBox10.Text)
        command6.Parameters.AddWithValue("@nl", TextBox9.Text)

        If table5.Rows.Count = 1 And TextBox1.Text = pomoc.Text Then
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
            End If
        ElseIf table5.Rows.Count = 0 And iReturn2 = True And TextBox1.Text <> String.Empty And TextBox2.Text <> String.Empty And TextBox3.Text <> String.Empty And TextBox4.Text <> String.Empty And TextBox5.Text <> String.Empty And TextBox6.Text <> String.Empty And TextBox7.Text <> String.Empty And TextBox8.Text <> String.Empty And TextBox9.Text <> String.Empty And TextBox10.Text <> String.Empty Then
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