<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
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
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.pomoc = New System.Windows.Forms.Label()
        Me.pomoc2 = New System.Windows.Forms.Label()
        Me.pomoc3 = New System.Windows.Forms.Label()
        Me.pomoc4 = New System.Windows.Forms.Label()
        Me.pomoc5 = New System.Windows.Forms.Label()
        Me.pomoc6 = New System.Windows.Forms.Label()
        Me.pomoc7 = New System.Windows.Forms.Label()
        Me.pomoc8 = New System.Windows.Forms.Label()
        Me.pomoc9 = New System.Windows.Forms.Label()
        Me.pomoc10 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 20.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(238, Byte))
        Me.Label1.Location = New System.Drawing.Point(247, 59)
        Me.Label1.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(542, 39)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Witaj w multimedialnej bibliotece"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(369, 160)
        Me.TextBox1.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(288, 22)
        Me.TextBox1.TabIndex = 1
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(238, Byte))
        Me.Label2.Location = New System.Drawing.Point(279, 158)
        Me.Label2.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(60, 25)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Login"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(238, Byte))
        Me.Label3.Location = New System.Drawing.Point(279, 199)
        Me.Label3.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(62, 25)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Hasło"
        '
        'TextBox2
        '
        Me.TextBox2.Location = New System.Drawing.Point(369, 202)
        Me.TextBox2.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(288, 22)
        Me.TextBox2.TabIndex = 3
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(336, 299)
        Me.Label4.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(113, 17)
        Me.Label4.TabIndex = 5
        Me.Label4.Text = "Nie masz konta?"
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(459, 246)
        Me.Button1.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(100, 28)
        Me.Button1.TabIndex = 7
        Me.Button1.Text = "Zaloguj"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(459, 293)
        Me.Button2.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(100, 28)
        Me.Button2.TabIndex = 8
        Me.Button2.Text = "Rejestracja"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'pomoc
        '
        Me.pomoc.AutoSize = True
        Me.pomoc.Location = New System.Drawing.Point(340, 391)
        Me.pomoc.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.pomoc.Name = "pomoc"
        Me.pomoc.Size = New System.Drawing.Size(50, 17)
        Me.pomoc.TabIndex = 9
        Me.pomoc.Text = "pomoc"
        Me.pomoc.Visible = False
        '
        'pomoc2
        '
        Me.pomoc2.AutoSize = True
        Me.pomoc2.Location = New System.Drawing.Point(471, 391)
        Me.pomoc2.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.pomoc2.Name = "pomoc2"
        Me.pomoc2.Size = New System.Drawing.Size(58, 17)
        Me.pomoc2.TabIndex = 10
        Me.pomoc2.Text = "pomoc2"
        Me.pomoc2.Visible = False
        '
        'pomoc3
        '
        Me.pomoc3.AutoSize = True
        Me.pomoc3.Location = New System.Drawing.Point(588, 391)
        Me.pomoc3.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.pomoc3.Name = "pomoc3"
        Me.pomoc3.Size = New System.Drawing.Size(58, 17)
        Me.pomoc3.TabIndex = 11
        Me.pomoc3.Text = "pomoc3"
        Me.pomoc3.Visible = False
        '
        'pomoc4
        '
        Me.pomoc4.AutoSize = True
        Me.pomoc4.Location = New System.Drawing.Point(700, 391)
        Me.pomoc4.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.pomoc4.Name = "pomoc4"
        Me.pomoc4.Size = New System.Drawing.Size(58, 17)
        Me.pomoc4.TabIndex = 12
        Me.pomoc4.Text = "pomoc4"
        Me.pomoc4.Visible = False
        '
        'pomoc5
        '
        Me.pomoc5.AutoSize = True
        Me.pomoc5.Location = New System.Drawing.Point(336, 455)
        Me.pomoc5.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.pomoc5.Name = "pomoc5"
        Me.pomoc5.Size = New System.Drawing.Size(58, 17)
        Me.pomoc5.TabIndex = 13
        Me.pomoc5.Text = "pomoc5"
        Me.pomoc5.Visible = False
        '
        'pomoc6
        '
        Me.pomoc6.AutoSize = True
        Me.pomoc6.Location = New System.Drawing.Point(441, 455)
        Me.pomoc6.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.pomoc6.Name = "pomoc6"
        Me.pomoc6.Size = New System.Drawing.Size(58, 17)
        Me.pomoc6.TabIndex = 14
        Me.pomoc6.Text = "pomoc6"
        Me.pomoc6.Visible = False
        '
        'pomoc7
        '
        Me.pomoc7.AutoSize = True
        Me.pomoc7.Location = New System.Drawing.Point(541, 455)
        Me.pomoc7.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.pomoc7.Name = "pomoc7"
        Me.pomoc7.Size = New System.Drawing.Size(58, 17)
        Me.pomoc7.TabIndex = 15
        Me.pomoc7.Text = "pomoc7"
        Me.pomoc7.Visible = False
        '
        'pomoc8
        '
        Me.pomoc8.AutoSize = True
        Me.pomoc8.Location = New System.Drawing.Point(633, 455)
        Me.pomoc8.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.pomoc8.Name = "pomoc8"
        Me.pomoc8.Size = New System.Drawing.Size(58, 17)
        Me.pomoc8.TabIndex = 16
        Me.pomoc8.Text = "pomoc8"
        Me.pomoc8.Visible = False
        '
        'pomoc9
        '
        Me.pomoc9.AutoSize = True
        Me.pomoc9.Location = New System.Drawing.Point(721, 455)
        Me.pomoc9.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.pomoc9.Name = "pomoc9"
        Me.pomoc9.Size = New System.Drawing.Size(58, 17)
        Me.pomoc9.TabIndex = 17
        Me.pomoc9.Text = "pomoc9"
        Me.pomoc9.Visible = False
        '
        'pomoc10
        '
        Me.pomoc10.AutoSize = True
        Me.pomoc10.Location = New System.Drawing.Point(818, 455)
        Me.pomoc10.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.pomoc10.Name = "pomoc10"
        Me.pomoc10.Size = New System.Drawing.Size(66, 17)
        Me.pomoc10.TabIndex = 18
        Me.pomoc10.Text = "pomoc10"
        Me.pomoc10.Visible = False
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1067, 554)
        Me.Controls.Add(Me.pomoc10)
        Me.Controls.Add(Me.pomoc9)
        Me.Controls.Add(Me.pomoc8)
        Me.Controls.Add(Me.pomoc7)
        Me.Controls.Add(Me.pomoc6)
        Me.Controls.Add(Me.pomoc5)
        Me.Controls.Add(Me.pomoc4)
        Me.Controls.Add(Me.pomoc3)
        Me.Controls.Add(Me.pomoc2)
        Me.Controls.Add(Me.pomoc)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.TextBox2)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Label1)
        Me.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As Label
	Friend WithEvents TextBox1 As TextBox
	Friend WithEvents Label2 As Label
	Friend WithEvents Label3 As Label
	Friend WithEvents TextBox2 As TextBox
	Friend WithEvents Label4 As Label
	Friend WithEvents Button1 As Button
	Friend WithEvents Button2 As Button
	Friend WithEvents pomoc As Label
    Friend WithEvents pomoc2 As Label
    Friend WithEvents pomoc3 As Label
    Friend WithEvents pomoc4 As Label
    Friend WithEvents pomoc5 As Label
    Friend WithEvents pomoc6 As Label
    Friend WithEvents pomoc7 As Label
    Friend WithEvents pomoc8 As Label
    Friend WithEvents pomoc9 As Label
    Friend WithEvents pomoc10 As Label
End Class
