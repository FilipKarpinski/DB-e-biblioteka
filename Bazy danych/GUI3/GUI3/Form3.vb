Imports MySql.Data.MySqlClient
Public Class Form3

	Dim connection As MySqlConnection
    Dim command As MySqlCommand
    Dim command2 As MySqlCommand
    Dim command3 As MySqlCommand
    Dim reader As MySqlDataReader

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        load_data()
    End Sub
    Public Sub load_data()
        connection = New MySqlConnection
        connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"

        Dim dataSet As New DataTable
        Dim bindindsrc As New BindingSource
        Dim dataadapt As New MySqlDataAdapter

        Try
            command = New MySqlCommand("SELECT identyfikator,imie,nazwisko,autoryzacja,identyfikator_admina,id_szkoly FROM uzytkownicy_biblioteki where id_szkoly='" & Form1.pomoc2.Text & "'", connection)
            dataadapt.SelectCommand = command
            dataadapt.Fill(dataSet)
            bindindsrc.DataSource = dataSet
            DataGridView1.DataSource = bindindsrc
            dataadapt.Update(dataSet)
            connection.Close()
        Catch ex As ArgumentException
        End Try
    End Sub

    Private Sub Form3_Load(sender As Object, e As EventArgs) Handles MyBase.Load

	End Sub

	Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
		Close()
	End Sub

	Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
		Dim form As New Form4
		form.ShowDialog()
	End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        connection = New MySqlConnection
        connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"
        connection.Open()
        command = New MySqlCommand("select identyfikator from uzytkownik where identyfikator ='" & pomoc.Text & "'", connection)
        Dim reader As MySqlDataReader
        reader = command.ExecuteReader()
        Dim it As String
        While reader.Read
            it = reader.Item("identyfikator")
            pomoc2.Text = it.ToString
        End While
        reader.Close()
        command2 = New MySqlCommand("select identyfikator from uczen where identyfikator ='" & pomoc2.Text & "'", connection)
        Dim adapter2 As New MySqlDataAdapter(command2)
        Dim table2 As New DataTable()
        adapter2.Fill(table2)

        command3 = New MySqlCommand("select identyfikator from nauczyciel where identyfikator ='" & pomoc2.Text & "'", connection)
        Dim adapter3 As New MySqlDataAdapter(command3)
        Dim table3 As New DataTable()
        adapter3.Fill(table3)

        If table2.Rows.Count <> 0 Then
            Dim form As New Form5
            form.ShowDialog()
        ElseIf table3.Rows.Count <> 0 Then
            Dim form As New Form6
            form.ShowDialog()
        Else
            MessageBox.Show("Blad")
        End If

    End Sub

    Private Sub ListBox1_SelectedIndexChanged(sender As Object, e As EventArgs)

	End Sub

    Private Sub DataGridView1_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellClick
        Dim row As DataGridViewRow = DataGridView1.CurrentRow
        Dim id As String
        id = row.Cells(0).Value.ToString
        pomoc.Text = id
        Form1.pomoc3.Text = id
    End Sub

    Private Sub Label7_Click(sender As Object, e As EventArgs)

	End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        If TextBox2.Text = Nothing Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT identyfikator,imie,nazwisko,autoryzacja,identyfikator_admina,id_szkoly FROM uzytkownicy_biblioteki where id_szkoly='" & Form1.pomoc2.Text & "'", connection)
                dataadapt.SelectCommand = command
                dataadapt.Fill(dataSet)
                bindindsrc.DataSource = dataSet
                DataGridView1.DataSource = bindindsrc
                dataadapt.Update(dataSet)
                connection.Close()
            Catch ex As ArgumentException
            End Try
        ElseIf ComboBox1.Text = "Imie" Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT identyfikator,imie,nazwisko,autoryzacja,identyfikator_admina FROM uzytkownicy_biblioteki where id_szkoly='" & Form1.pomoc2.Text & "' and imie ='" & TextBox2.Text & "'", connection)
                dataadapt.SelectCommand = command
                dataadapt.Fill(dataSet)
                bindindsrc.DataSource = dataSet
                DataGridView1.DataSource = bindindsrc
                dataadapt.Update(dataSet)
                connection.Close()
            Catch ex As ArgumentException
            End Try
        ElseIf ComboBox1.Text = "Nazwisko" Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT identyfikator,imie,nazwisko,autoryzacja,identyfikator_admina FROM uzytkownicy_biblioteki where idszkoly='" & Form1.pomoc2.Text & "' and nazwisko ='" & TextBox2.Text & "'", connection)
                dataadapt.SelectCommand = command
                dataadapt.Fill(dataSet)
                bindindsrc.DataSource = dataSet
                DataGridView1.DataSource = bindindsrc
                dataadapt.Update(dataSet)
                connection.Close()
            Catch ex As ArgumentException
            End Try
        ElseIf ComboBox1.Text = "Id" Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT identyfikator,imie,nazwisko,autoryzacja,identyfikator_admina FROM uzytkownicy_biblioteki where id_szkoly='" & Form1.pomoc2.Text & "' and identyfikator ='" & TextBox2.Text & "'", connection)
                dataadapt.SelectCommand = command
                dataadapt.Fill(dataSet)
                bindindsrc.DataSource = dataSet
                DataGridView1.DataSource = bindindsrc
                dataadapt.Update(dataSet)
                connection.Close()
            Catch ex As ArgumentException
            End Try
        ElseIf ComboBox1.Text = "Autoryzacja(0,1)" Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT identyfikator,imie,nazwisko,autoryzacja,identyfikator_admina FROM uzytkownicy_biblioteki where id_szkoly='" & Form1.pomoc2.Text & "' and autoryzacja ='" & TextBox2.Text & "'", connection)
                dataadapt.SelectCommand = command
                dataadapt.Fill(dataSet)
                bindindsrc.DataSource = dataSet
                DataGridView1.DataSource = bindindsrc
                dataadapt.Update(dataSet)
                connection.Close()
            Catch ex As ArgumentException
            End Try

        End If


    End Sub

    Private Sub TextBox2_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Private Sub TextBox2_TextChanged_1(sender As Object, e As EventArgs) Handles TextBox2.TextChanged

    End Sub

    Private Sub ComboBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox1.SelectedIndexChanged

    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        connection = New MySqlConnection
        connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"
        connection.Open()
        Try
            Dim command1 As New MySqlCommand("DELETE FROM `uczen` WHERE `uczen`.`identyfikator` = '" & pomoc.Text & "'", connection)
            command1.ExecuteNonQuery()
            Dim command3 As New MySqlCommand("DELETE FROM `nauczyciel_dziedzina` WHERE `nauczyciel_dziedzina`.`identyfikator` = '" & pomoc.Text & "'", connection)
            command3.ExecuteNonQuery()
            Dim command4 As New MySqlCommand("DELETE FROM `nauczyciel` WHERE `nauczyciel`.`identyfikator` = '" & pomoc.Text & "'", connection)
            command4.ExecuteNonQuery()
            Dim command5 As New MySqlCommand("DELETE FROM `uzytkownik_biblioteki` WHERE `uzytkownik_biblioteki`.`identyfikator` = '" & pomoc.Text & "'", connection)
            command5.ExecuteNonQuery()
            Dim command6 As New MySqlCommand("DELETE FROM `uzytkownik` WHERE `uzytkownik`.`identyfikator` = '" & pomoc.Text & "'", connection)
            command6.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox("Blad przy usuwaniu")
        End Try
        load_data()
        connection.Close()
    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        load_data()
    End Sub
End Class