
Imports MySql.Data.MySqlClient
Public Class Form9

    Dim connection As MySqlConnection
    Dim command As MySqlCommand
    Dim iReturn As Boolean

    Private Sub Form9_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        load_data()
    End Sub
    Public Sub load_data()
        iReturn = False
        connection = New MySqlConnection
        connection.ConnectionString = "server=127.0.0.1;userid=root;password=;database=biblioteka"

        Dim dataSet As New DataTable
        Dim bindindsrc As New BindingSource
        Dim dataadapt As New MySqlDataAdapter

        Try
            command = New MySqlCommand("SELECT nr_katalogowy,id_pozycja,max_czas_wypozyczenia_mies FROM egzemplarz where status_dostepnosci=1 and id_pozycja='" & Form1.pomoc4.Text & "'", connection)
            dataadapt.SelectCommand = command
            dataadapt.Fill(dataSet)
            bindindsrc.DataSource = dataSet
            DataGridView1.DataSource = bindindsrc
            dataadapt.Update(dataSet)
            connection.Close()
        Catch ex As ArgumentException
        End Try
    End Sub
    Private Sub DataGridView1_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellClick
        Dim row As DataGridViewRow = DataGridView1.CurrentRow
        Dim id As String
        id = row.Cells(1).Value.ToString
        Form1.pomoc5.Text = id
        id = row.Cells(0).Value.ToString
        Form1.pomoc6.Text = id
    End Sub
    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Close()
    End Sub

    Private Sub DataGridView1_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        connection.Open()
        Dim command2 As New MySqlCommand("INSERT INTO egzemplarz_zamowienie(id_zamowienia,nr_katalogowy) VALUES (@idz2,@nk)", connection)
        Dim command4 As New MySqlCommand("SELECT MAX(id_zamowienia) FROM zamowienie", connection)
        Dim it2 As Int16
        Try
            it2 = command4.ExecuteScalar()
            command2.Parameters.AddWithValue("@idz2", Form1.pomoc7.Text)
            command2.Parameters.AddWithValue("@nk", Form1.pomoc6.Text)
            command2.ExecuteNonQuery()
            MsgBox("sukces")
        Catch ex As Exception
            MsgBox("Blad")
        End Try
        connection.Close()
    End Sub
End Class