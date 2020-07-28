<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form7
	Inherits System.Windows.Forms.Form

	'Formularz przesłania metodę dispose, aby wyczyścić listę składników.
	<System.Diagnostics.DebuggerNonUserCode()> _
	Protected Overrides Sub Dispose(ByVal disposing As Boolean)
		Try
			If disposing AndAlso components IsNot Nothing Then
				components.Dispose()
			End If
		Finally
			MyBase.Dispose(disposing)
		End Try
	End Sub

	'Wymagane przez Projektanta formularzy systemu Windows
	Private components As System.ComponentModel.IContainer

	'UWAGA: następująca procedura jest wymagana przez Projektanta formularzy systemu Windows
	'Możesz to modyfikować, używając Projektanta formularzy systemu Windows. 
	'Nie należy modyfikować za pomocą edytora kodu.
	<System.Diagnostics.DebuggerStepThrough()> _
	Private Sub InitializeComponent()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.Button7 = New System.Windows.Forms.Button()
        Me.DataGridView1 = New System.Windows.Forms.DataGridView()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.ComboBox1 = New System.Windows.Forms.ComboBox()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.pomoc = New System.Windows.Forms.Label()
        Me.pomoc2 = New System.Windows.Forms.Label()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 21.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(238, Byte))
        Me.Label1.Location = New System.Drawing.Point(315, 32)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(176, 33)
        Me.Label1.TabIndex = 49
        Me.Label1.Text = "Lista pozycji"
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(691, 122)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(83, 38)
        Me.Button3.TabIndex = 48
        Me.Button3.Text = "Dostępne egzemplarze"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(714, 42)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 46
        Me.Button1.Text = "Wyloguj"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(151, 30)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(115, 35)
        Me.Button5.TabIndex = 82
        Me.Button5.Text = "Historia zamówień"
        Me.Button5.UseVisualStyleBackColor = True
        '
        'Button7
        '
        Me.Button7.Location = New System.Drawing.Point(21, 30)
        Me.Button7.Name = "Button7"
        Me.Button7.Size = New System.Drawing.Size(115, 35)
        Me.Button7.TabIndex = 81
        Me.Button7.Text = "Zamówienie"
        Me.Button7.UseVisualStyleBackColor = True
        '
        'DataGridView1
        '
        Me.DataGridView1.AllowUserToAddRows = False
        Me.DataGridView1.AllowUserToDeleteRows = False
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Location = New System.Drawing.Point(230, 122)
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.ReadOnly = True
        Me.DataGridView1.Size = New System.Drawing.Size(443, 253)
        Me.DataGridView1.TabIndex = 83
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(26, 152)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(53, 13)
        Me.Label3.TabIndex = 88
        Me.Label3.Text = "Wyszukaj"
        '
        'ComboBox1
        '
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Items.AddRange(New Object() {"Id pozycja", "Opis", "Rok wydania", "Typ pozycji", "Imie", "Nazwisko", "Rodzaj nazwa", "Material pomocniczy"})
        Me.ComboBox1.Location = New System.Drawing.Point(85, 122)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(121, 21)
        Me.ComboBox1.TabIndex = 87
        '
        'TextBox2
        '
        Me.TextBox2.Location = New System.Drawing.Point(85, 149)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(121, 20)
        Me.TextBox2.TabIndex = 86
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(131, 191)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(75, 23)
        Me.Button4.TabIndex = 85
        Me.Button4.Text = "Wyszukaj"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(56, 125)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(23, 13)
        Me.Label2.TabIndex = 84
        Me.Label2.Text = "Filtr"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(691, 183)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(83, 38)
        Me.Button2.TabIndex = 89
        Me.Button2.Text = "Pobierz"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'pomoc
        '
        Me.pomoc.AutoSize = True
        Me.pomoc.Location = New System.Drawing.Point(400, 415)
        Me.pomoc.Name = "pomoc"
        Me.pomoc.Size = New System.Drawing.Size(39, 13)
        Me.pomoc.TabIndex = 90
        Me.pomoc.Text = "pomoc"
        Me.pomoc.Visible = False
        '
        'pomoc2
        '
        Me.pomoc2.AutoSize = True
        Me.pomoc2.Location = New System.Drawing.Point(452, 415)
        Me.pomoc2.Name = "pomoc2"
        Me.pomoc2.Size = New System.Drawing.Size(45, 13)
        Me.pomoc2.TabIndex = 91
        Me.pomoc2.Text = "pomoc2"
        Me.pomoc2.Visible = False
        '
        'Form7
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(825, 475)
        Me.Controls.Add(Me.pomoc2)
        Me.Controls.Add(Me.pomoc)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.ComboBox1)
        Me.Controls.Add(Me.TextBox2)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.DataGridView1)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Button7)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button1)
        Me.Name = "Form7"
        Me.Text = "Form7"
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As Label
    Friend WithEvents Button3 As Button
    Friend WithEvents Button1 As Button
    Friend WithEvents Button5 As Button
    Friend WithEvents Button7 As Button
    Friend WithEvents DataGridView1 As DataGridView
    Friend WithEvents Label3 As Label
    Friend WithEvents ComboBox1 As ComboBox
    Friend WithEvents TextBox2 As TextBox
    Friend WithEvents Button4 As Button
    Friend WithEvents Label2 As Label
    Friend WithEvents Button2 As Button
    Friend WithEvents pomoc As Label
    Friend WithEvents pomoc2 As Label
End Class
