<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form9
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
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Button6 = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.DataGridView1 = New System.Windows.Forms.DataGridView()
        Me.pomoc = New System.Windows.Forms.Label()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(644, 87)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(80, 37)
        Me.Button1.TabIndex = 37
        Me.Button1.Text = "Dodaj do zamówienia"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Button6
        '
        Me.Button6.Location = New System.Drawing.Point(649, 396)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(75, 23)
        Me.Button6.TabIndex = 36
        Me.Button6.Text = "Powrót"
        Me.Button6.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 21.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(238, Byte))
        Me.Label1.Location = New System.Drawing.Point(238, 31)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(315, 33)
        Me.Label1.TabIndex = 34
        Me.Label1.Text = "Dostępne egzemplarze"
        '
        'DataGridView1
        '
        Me.DataGridView1.AllowUserToAddRows = False
        Me.DataGridView1.AllowUserToDeleteRows = False
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Location = New System.Drawing.Point(98, 87)
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.ReadOnly = True
        Me.DataGridView1.Size = New System.Drawing.Size(524, 260)
        Me.DataGridView1.TabIndex = 39
        '
        'pomoc
        '
        Me.pomoc.AutoSize = True
        Me.pomoc.Location = New System.Drawing.Point(333, 396)
        Me.pomoc.Name = "pomoc"
        Me.pomoc.Size = New System.Drawing.Size(39, 13)
        Me.pomoc.TabIndex = 91
        Me.pomoc.Text = "pomoc"
        Me.pomoc.Visible = False
        '
        'Form9
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.pomoc)
        Me.Controls.Add(Me.DataGridView1)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.Button6)
        Me.Controls.Add(Me.Label1)
        Me.Name = "Form9"
        Me.Text = "Form9"
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Button1 As Button
    Friend WithEvents Button6 As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents DataGridView1 As DataGridView
    Friend WithEvents pomoc As Label
End Class
