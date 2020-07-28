<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form8
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
		Me.Button6 = New System.Windows.Forms.Button()
		Me.TextBox1 = New System.Windows.Forms.TextBox()
		Me.Label1 = New System.Windows.Forms.Label()
		Me.SuspendLayout()
		'
		'Button6
		'
		Me.Button6.Location = New System.Drawing.Point(675, 397)
		Me.Button6.Name = "Button6"
		Me.Button6.Size = New System.Drawing.Size(75, 23)
		Me.Button6.TabIndex = 31
		Me.Button6.Text = "Powrót"
		Me.Button6.UseVisualStyleBackColor = True
		'
		'TextBox1
		'
		Me.TextBox1.Location = New System.Drawing.Point(244, 93)
		Me.TextBox1.Multiline = True
		Me.TextBox1.Name = "TextBox1"
		Me.TextBox1.Size = New System.Drawing.Size(400, 280)
		Me.TextBox1.TabIndex = 30
		Me.TextBox1.Text = "Kopciuszek - super fajna książka itd." & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10)
		'
		'Label1
		'
		Me.Label1.AutoSize = True
		Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 21.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(238, Byte))
		Me.Label1.Location = New System.Drawing.Point(238, 31)
		Me.Label1.Name = "Label1"
		Me.Label1.Size = New System.Drawing.Size(238, 33)
		Me.Label1.TabIndex = 29
		Me.Label1.Text = "Więcej informacji"
		'
		'Form8
		'
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.ClientSize = New System.Drawing.Size(800, 450)
		Me.Controls.Add(Me.Button6)
		Me.Controls.Add(Me.TextBox1)
		Me.Controls.Add(Me.Label1)
		Me.Name = "Form8"
		Me.Text = "Form8"
		Me.ResumeLayout(False)
		Me.PerformLayout()

	End Sub

	Friend WithEvents Button6 As Button
	Friend WithEvents TextBox1 As TextBox
	Friend WithEvents Label1 As Label
End Class
