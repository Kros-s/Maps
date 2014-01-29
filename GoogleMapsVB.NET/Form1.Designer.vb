<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
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

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.WebBrowser1 = New System.Windows.Forms.WebBrowser()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtdireccion = New System.Windows.Forms.TextBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.txtlatitud = New System.Windows.Forms.TextBox()
        Me.txtlongitud = New System.Windows.Forms.TextBox()
        Me.addMarker = New System.Windows.Forms.Button()
        Me.lblLatitud = New System.Windows.Forms.Label()
        Me.lblLongitud = New System.Windows.Forms.Label()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.ComboBox1 = New System.Windows.Forms.ComboBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'WebBrowser1
        '
        Me.WebBrowser1.Location = New System.Drawing.Point(0, 127)
        Me.WebBrowser1.MinimumSize = New System.Drawing.Size(20, 20)
        Me.WebBrowser1.Name = "WebBrowser1"
        Me.WebBrowser1.Size = New System.Drawing.Size(1149, 528)
        Me.WebBrowser1.TabIndex = 0
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(15, 27)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(96, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Dirección a buscar"
        '
        'txtdireccion
        '
        Me.txtdireccion.Location = New System.Drawing.Point(154, 24)
        Me.txtdireccion.Name = "txtdireccion"
        Me.txtdireccion.Size = New System.Drawing.Size(231, 20)
        Me.txtdireccion.TabIndex = 2
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(442, 19)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(95, 28)
        Me.Button1.TabIndex = 3
        Me.Button1.Text = "Buscar"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'txtlatitud
        '
        Me.txtlatitud.Location = New System.Drawing.Point(154, 64)
        Me.txtlatitud.Margin = New System.Windows.Forms.Padding(2)
        Me.txtlatitud.Name = "txtlatitud"
        Me.txtlatitud.Size = New System.Drawing.Size(76, 20)
        Me.txtlatitud.TabIndex = 4
        '
        'txtlongitud
        '
        Me.txtlongitud.Location = New System.Drawing.Point(154, 88)
        Me.txtlongitud.Margin = New System.Windows.Forms.Padding(2)
        Me.txtlongitud.Name = "txtlongitud"
        Me.txtlongitud.Size = New System.Drawing.Size(76, 20)
        Me.txtlongitud.TabIndex = 5
        '
        'addMarker
        '
        Me.addMarker.Location = New System.Drawing.Point(259, 62)
        Me.addMarker.Name = "addMarker"
        Me.addMarker.Size = New System.Drawing.Size(126, 23)
        Me.addMarker.TabIndex = 6
        Me.addMarker.Text = "Agregar marcador"
        Me.addMarker.UseVisualStyleBackColor = True
        '
        'lblLatitud
        '
        Me.lblLatitud.AutoSize = True
        Me.lblLatitud.Location = New System.Drawing.Point(34, 71)
        Me.lblLatitud.Name = "lblLatitud"
        Me.lblLatitud.Size = New System.Drawing.Size(35, 13)
        Me.lblLatitud.TabIndex = 7
        Me.lblLatitud.Text = "latitud"
        '
        'lblLongitud
        '
        Me.lblLongitud.AutoSize = True
        Me.lblLongitud.Location = New System.Drawing.Point(34, 94)
        Me.lblLongitud.Name = "lblLongitud"
        Me.lblLongitud.Size = New System.Drawing.Size(48, 13)
        Me.lblLongitud.TabIndex = 8
        Me.lblLongitud.Text = "Longitud"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(442, 60)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 9
        Me.Button2.Text = "Button2"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'ComboBox1
        '
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Location = New System.Drawing.Point(636, 19)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(121, 21)
        Me.ComboBox1.TabIndex = 10
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(569, 22)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(39, 13)
        Me.Label2.TabIndex = 11
        Me.Label2.Text = "Mapas"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1150, 605)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.ComboBox1)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.lblLongitud)
        Me.Controls.Add(Me.lblLatitud)
        Me.Controls.Add(Me.addMarker)
        Me.Controls.Add(Me.txtlongitud)
        Me.Controls.Add(Me.txtlatitud)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.txtdireccion)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.WebBrowser1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents WebBrowser1 As System.Windows.Forms.WebBrowser
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtdireccion As System.Windows.Forms.TextBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents txtlatitud As System.Windows.Forms.TextBox
    Friend WithEvents txtlongitud As System.Windows.Forms.TextBox
    Friend WithEvents addMarker As System.Windows.Forms.Button
    Friend WithEvents lblLatitud As System.Windows.Forms.Label
    Friend WithEvents lblLongitud As System.Windows.Forms.Label
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents ComboBox1 As System.Windows.Forms.ComboBox
    Friend WithEvents Label2 As System.Windows.Forms.Label

End Class
