Imports MySql.Data.MySqlClient

Public Class Form1
	Dim connection As MySqlConnection
    Dim command As MySqlCommand
    Dim command2 As MySqlCommand
    Dim command3 As MySqlCommand
    Dim reader As MySqlDataReader
	Private Sub Label1_Click(sender As Object, e As EventArgs) Handles Label1.Click

	End Sub

	Private Sub Label4_Click(sender As Object, e As EventArgs) Handles Label4.Click

	End Sub

	Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
	End Sub

	Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
		Dim form As New Form2
		form.ShowDialog()

	End Sub

	Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
		connection = New MySqlConnection
		connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"
		connection.Open()
        command = New MySqlCommand("select identyfikator,login,haslo from uzytkownik where login ='" & TextBox1.Text & "' and haslo ='" & TextBox2.Text & "'", connection)

        Dim reader As MySqlDataReader
		reader = command.ExecuteReader()
		Dim it As String
		While reader.Read
			it = reader.Item("identyfikator")
			pomoc.Text = it.ToString
        End While
        reader.Close()
        command2 = New MySqlCommand("select identyfikator,id_szkoly from admin_szkoly where identyfikator ='" & pomoc.Text & "'", connection)
        Dim adapter2 As New MySqlDataAdapter(command2)
        Dim table2 As New DataTable()
        adapter2.Fill(table2)

        command3 = New MySqlCommand("select identyfikator,id_szkoly,autoryzacja from uzytkownik_biblioteki where autoryzacja=1 and identyfikator ='" & pomoc.Text & "'", connection)
        Dim adapter3 As New MySqlDataAdapter(command3)
        Dim table3 As New DataTable()
        adapter3.Fill(table3)


        If table2.Rows.Count <> 0 Then
            Dim reader2 As MySqlDataReader
            reader2 = command2.ExecuteReader()
            Dim it2 As String
            While reader2.Read
                it2 = reader2.Item("id_szkoly")
                pomoc2.Text = it2.ToString
            End While
            reader2.Close()
            Dim form As New Form3
            form.ShowDialog()
        ElseIf table3.Rows.Count <> 0 Then
            Dim form As New Form7
            form.ShowDialog()
        Else
            MessageBox.Show("Zly login lub haslo")
        End If


    End Sub

	Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged


	End Sub

	Private Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged

	End Sub

    Private Sub Label5_Click(sender As Object, e As EventArgs) Handles pomoc2.Click

    End Sub
End Class
