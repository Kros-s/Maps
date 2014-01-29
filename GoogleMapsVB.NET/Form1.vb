Imports System.Xml.XPath
Imports System.IO
Imports System.Net

Public Class Form1
    Dim cadena As String

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click

        ''Creamos variable para almacenar la url
        Dim urlMaps As String
        ''Concatenamos la dirección con el Textbox añadimos la última sentencia para indicar que sólo se muestre el mapa
        '' '' ''urlMaps = "http://localhost:3494/Mapa/Default.aspx"
        urlMaps = "http://maps.google.es/maps?q=" & txtdireccion.Text & "&output=embed" 'Creamos una variable direccion para que el WebBrowser lo pueda abrir puesto que no puede abrir directamente un string
        Dim direccion As New Uri(urlMaps)
        'ASignamos como URL la direccion
        WebBrowser1.Url = direccion
        If txtdireccion.Text <> "" Then 'Si hay escrito algo en el texbox dirección
            Dim datos As New ArrayList 'Creamos arraylist en el que almacenamos la información
            datos = CodificacionGeografica(txtdireccion.Text.ToString.Replace(" ", "+"), , , )
            If datos.Count > 1 Then 'Si se ha almacenado al menos dos datos
                txtlatitud.Text = datos(0)
                txtlongitud.Text = datos(1)
            Else
                txtlatitud.Text = "No encontrado"
                txtlongitud.Text = "No encontrado"
            End If
        End If
    End Sub
    Private Sub txtdireccion_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtdireccion.TextChanged

        'Creamos variable para almacenar la url
        ' ''Dim urlMaps As String
        '' ''Concatenamos la dirección con el Textbox añadimos la última sentencia para indicar que sólo se muestre el mapa
        ' ''urlMaps = "http://maps.google.es/maps?q=" & txtdireccion.Text & "&output=embed"
        '' ''Creamos una variable direccion para que el WebBrowser lo pueda abrir puesto que no puede abrir directamente un string
        ' ''Dim direccion As New Uri(urlMaps)
        '' ''ASignamos como URL la direccion
        ' ''WebBrowser1.Url = direccion
    End Sub

    Public Function CodificacionGeografica(ByVal direccion As String, Optional ByVal regionBusqueda As String = "es", Optional ByVal idioma As String = "es", Optional ByVal sensor As Boolean = False) 'busca latitud/longitud a partir de dirección
        'La función recibe 4 parámetros. La región, idioma y sensor son opcionales.


        'Creamos la dirección
        Dim direccion1 As String
        direccion1 = "address=" & direccion

        'Creamos la region
        Dim region1 As String
        region1 = "region=" & regionBusqueda

        'Creamos el idioma
        Dim idioma1 As String
        idioma1 = "language=" & idioma

        'Creamos el sensor
        Dim sensor1 As String
        sensor1 = "sensor=" & sensor.ToString.ToLower

        'Creamos la URL con los datos
        Dim url = "http://maps.googleapis.com/maps/api/geocode/xml?" + direccion1 + "&" + region1 + "&" + idioma1 + "&" + sensor1

        Dim LatLong As New ArrayList() 'Creamos un arraylist en el que almacenaremos toda la información

        'Creamos una petición http y asignamos un tiempo máximo de espera de 3000 milisegundos
        Dim req As HttpWebRequest = DirectCast(WebRequest.Create(url), HttpWebRequest)
        req.Timeout = 3000
        'Preparamos el archivo xml
        Dim res As System.Net.WebResponse = req.GetResponse()
        Dim responseStream As Stream = res.GetResponseStream()
        Dim NodeIter As XPathNodeIterator
        Dim docNav As New XPathDocument(responseStream)
        Dim nav = docNav.CreateNavigator

        Dim ExLatitud, ExLongitud As String 'Variables para buscar dentro del archivo xml

        'Creamos los paths
        ExLatitud = "GeocodeResponse/result/geometry/location/lat"
        ExLongitud = "GeocodeResponse/result/geometry/location/lng"

        'Recorremos el xml
        NodeIter = nav.Select(ExLatitud)
        While (NodeIter.MoveNext())
            LatLong.Add(NodeIter.Current.Value)
            Exit While
        End While

        NodeIter = nav.Select(ExLongitud)
        While (NodeIter.MoveNext())
            LatLong.Add(NodeIter.Current.Value)
            Exit While
        End While

        responseStream.Close() 'Cerramos la conexión
        Return LatLong 'Devolvemos el arraylist con los datos
    End Function

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim urlMaps As String
        'Concatenamos la dirección con el Textbox añadimos la última sentencia para indicar que sólo se muestre el mapa
        urlMaps = "http://localhost:3494/Mapa/Default.aspx#"

        Dim direccion As New Uri(urlMaps)
        'ASignamos como URL la direccion
        WebBrowser1.Url = direccion
        Dim dt As New DS_Maps.tbl_MapsDataTable()
        Dim ta As New DS_MapsTableAdapters.tbl_MapsTableAdapter()

        ta.Fill(dt)
        With ComboBox1

            .DataSource = dt
            .DisplayMember = "MapName"
            .ValueMember = "Id_Map"
        End With


    End Sub

    Private Sub addMarker_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles addMarker.Click

        Dim urlMaps As String 
        If IsNumeric(cadena) = True Then
            MsgBox("Debe ser valor numerico")
            Return
        End If

        ''If cadena = "" Then
        ''    cadena = txtlatitud.Text & "," & txtlongitud.Text
        ''Else
        ''    cadena = cadena & "_" & txtlatitud.Text & "," & txtlongitud.Text

        ''End If

        'Concatenamos la dirección con el Textbox añadimos la última sentencia para indicar que sólo se muestre el mapa
        urlMaps = "http://localhost:3494/Mapa/Default.aspx?latitud=" & txtlatitud.Text & "&longitud=" & txtlongitud.Text & "&Opcion=" & "Abrir" & "&Id_Map=" & ComboBox1.SelectedValue


        Dim direccion1 As New Uri(urlMaps)

        'ASignamos como URL la direccion
        WebBrowser1.Url = direccion1
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim strUrl As String

        strUrl = WebBrowser1.Url.ToString
        MsgBox(strUrl)

    End Sub
End Class
