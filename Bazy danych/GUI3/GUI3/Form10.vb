Imports MySql.Data.MySqlClient
Public Class Form10
    Dim connection As MySqlConnection
    Dim command As MySqlCommand
    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Close()
    End Sub
    Private Sub DataGridView1_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellClick
        Dim row As DataGridViewRow = DataGridView1.CurrentRow
        Dim id As String
        id = row.Cells(3).Value.ToString
        Form1.pomoc8.Text = id
        Dim id2 As String
        id2 = row.Cells(0).Value.ToString
        Form1.pomoc10.Text = id2
    End Sub
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
            command = New MySqlCommand("SELECT id_zamowienia,id_pozycja,opis,nr_katalogowy FROM zam_wys where zatwierdzenie=0 and id_zamowienia='" & Form1.pomoc7.Text & "'", connection)
            dataadapt.SelectCommand = command
            dataadapt.Fill(dataSet)
            bindindsrc.DataSource = dataSet
            DataGridView1.DataSource = bindindsrc
            dataadapt.Update(dataSet)
            connection.Close()
        Catch ex As ArgumentException
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        connection = New MySqlConnection
        connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"
        connection.Open()
        Try
            Dim command1 As New MySqlCommand("DELETE FROM `egzemplarz_zamowienie` WHERE `egzemplarz_zamowienie`.`nr_katalogowy` = '" & Form1.pomoc8.Text & "'", connection)
            command1.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox("Blad przy usuwaniu")
        End Try
        load_data()
        connection.Close()
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        connection = New MySqlConnection
        connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"
        connection.Open()
        Try
            Dim command As New MySqlCommand("update zamowienie set zatwierdzenie=@im where id_zamowienia='" & Form1.pomoc10.Text & "'", connection)
            command.Parameters.AddWithValue("@im", 1)
            command.ExecuteNonQuery()
            MsgBox("sukces")
        Catch ex As Exception
            MsgBox("Blad")
        End Try
        connection.Close()
    End Sub
End Class