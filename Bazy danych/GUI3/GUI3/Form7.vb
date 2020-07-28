Imports MySql.Data.MySqlClient
Public Class Form7

    Dim connection As MySqlConnection
    Dim command As MySqlCommand
    Dim command76 As MySqlCommand
    Dim command77 As MySqlCommand

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
            command = New MySqlCommand("SELECT * FROM pozycje5", connection)
            dataadapt.SelectCommand = command
            dataadapt.Fill(dataSet)
            bindindsrc.DataSource = dataSet
            DataGridView1.DataSource = bindindsrc
            dataadapt.Update(dataSet)
            connection.Close()
        Catch ex As ArgumentException
        End Try
        connection.Open()
        command = New MySqlCommand("INSERT INTO zamowienie(id_zamowienia,identyfikator_uzytkownika) VALUES (@idz,@idu)", connection)
        command76 = New MySqlCommand("Delete from egzemplarz_zamowienie where id_zamowienia in(select id_zamowienia from zamowienie where zatwierdzenie = 0)", connection)
        command77 = New MySqlCommand("Delete from zamowienie where zatwierdzenie = 0", connection)
        Dim command3 As New MySqlCommand("SELECT MAX(id_zamowienia) FROM zamowienie", connection)
        Dim it As Int16
        command76.ExecuteNonQuery()
        command77.ExecuteNonQuery()
        Try
            it = command3.ExecuteScalar()
            command.Parameters.AddWithValue("@idz", it + 1)
            command.Parameters.AddWithValue("@idu", Form1.pomoc.Text)
            command.ExecuteNonQuery()
            Form1.pomoc7.Text = it + 1
            MsgBox("sukces")
        Catch ex As Exception
            MsgBox("Blad")
        End Try
        connection.Close()
    End Sub
    Private Sub DataGridView1_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellClick
        Dim row As DataGridViewRow = DataGridView1.CurrentRow
        Dim id As String
        Dim czy_cyfr As String
        id = row.Cells(0).Value.ToString
        Form1.pomoc4.Text = id
        czy_cyfr = row.Cells(4).Value.ToString
        pomoc.Text = czy_cyfr
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        If pomoc.Text <> "Cyfrowa" Then
            Dim form As New Form9
            form.ShowDialog()
        End If
    End Sub

    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Dim form As New Form10
        form.ShowDialog()
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Dim form As New Form11
        form.ShowDialog()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Close()
    End Sub

    Private Sub Button2_Click_1(sender As Object, e As EventArgs) Handles Button2.Click
        If pomoc.Text = "Cyfrowa" Then
            MsgBox("Pobieranie rozpoczęte")
        End If
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        If TextBox2.Text = Nothing Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT * FROM pozycje5", connection)
                dataadapt.SelectCommand = command
                dataadapt.Fill(dataSet)
                bindindsrc.DataSource = dataSet
                DataGridView1.DataSource = bindindsrc
                dataadapt.Update(dataSet)
                connection.Close()
            Catch ex As ArgumentException
            End Try
        ElseIf ComboBox1.Text = "Id pozycja" Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT * FROM pozycje5 where id_pozycja='" & TextBox2.Text & "'", connection)
                dataadapt.SelectCommand = command
                dataadapt.Fill(dataSet)
                bindindsrc.DataSource = dataSet
                DataGridView1.DataSource = bindindsrc
                dataadapt.Update(dataSet)
                connection.Close()
            Catch ex As ArgumentException
            End Try
        ElseIf ComboBox1.Text = "Opis" Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT * FROM pozycje5 where opis='" & TextBox2.Text & "'", connection)
                dataadapt.SelectCommand = command
                dataadapt.Fill(dataSet)
                bindindsrc.DataSource = dataSet
                DataGridView1.DataSource = bindindsrc
                dataadapt.Update(dataSet)
                connection.Close()
            Catch ex As ArgumentException
            End Try
        ElseIf ComboBox1.Text = "Rok wydania" Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT * FROM pozycje5 where rok_wydania='" & TextBox2.Text & "'", connection)
                dataadapt.SelectCommand = command
                dataadapt.Fill(dataSet)
                bindindsrc.DataSource = dataSet
                DataGridView1.DataSource = bindindsrc
                dataadapt.Update(dataSet)
                connection.Close()
            Catch ex As ArgumentException
            End Try
        ElseIf ComboBox1.Text = "Typ pozycji" Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT * FROM pozycje5 where typ_pozycji='" & TextBox2.Text & "'", connection)
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
                command = New MySqlCommand("SELECT * FROM pozycje5 where imie='" & TextBox2.Text & "'", connection)
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
                command = New MySqlCommand("SELECT * FROM pozycje5 where nazwisko='" & TextBox2.Text & "'", connection)
                dataadapt.SelectCommand = command
                dataadapt.Fill(dataSet)
                bindindsrc.DataSource = dataSet
                DataGridView1.DataSource = bindindsrc
                dataadapt.Update(dataSet)
                connection.Close()
            Catch ex As ArgumentException
            End Try
        ElseIf ComboBox1.Text = "Rodzaj nazwa" Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT * FROM pozycje5 where rodzaj_nazwa='" & TextBox2.Text & "'", connection)
                dataadapt.SelectCommand = command
                dataadapt.Fill(dataSet)
                bindindsrc.DataSource = dataSet
                DataGridView1.DataSource = bindindsrc
                dataadapt.Update(dataSet)
                connection.Close()
            Catch ex As ArgumentException
            End Try
        ElseIf ComboBox1.Text = "Material pomocniczy" Then
            connection = New MySqlConnection
            connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"


            Dim dataSet As New DataTable
            Dim bindindsrc As New BindingSource
            Dim dataadapt As New MySqlDataAdapter

            Try
                command = New MySqlCommand("SELECT * FROM pozycje5 where nazwa='" & TextBox2.Text & "'", connection)
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


End Class