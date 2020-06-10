<html>
<body>
<%@ LANGUAGE="VBSCRIPT" %>
<%
option explicit
Dim conn,RFC,nom,direc,tel,ciudad,codpostal,notarjeta

rfc=request.form("RFC")
nom=Request.Form("Nombre")
direc=request.Form("Direccion")
tel=Request.Form("Telefono")
ciudad=request.form("Ciudad")
codpostal=request.Form("Codigo Postal")
notarjeta=request.Form("No_Tarjeta")

set conn=Server.CreateObject("ADODB.connection")
Conn.open "provider=Microsoft.Jet.OLEDB.4.0;Data Source= C:\Users\Intecom\Desktop\Pagina Web\Personal.mdb"
Conn.execute "INSERT INTO Clientes(rfc,nombre,direccion,telefono,ciudad,codigopostal,no_tarjeta) values('"& nom & "','"& email & "','"& coments & "')"
Conn.close
set conn=nothing
response.redirect("GRACIAS.HTML")

%>
</body>
</html>

<html>
<body>
<%@ LANGUAGE="VBSCRIPT" %>
<%
option explicit
Dim conn,folio,fecha_c,rfc,codprod,cantprodcomp,

folio=Request.Form("Folio")
fecha_c=request.Form("Fecha_c")
rfc=Request.Form("RFC")
Codprod=request.Form("Codigo_Producto")
cantprodcomp=request.Form("Cantidad_Producto_Comprado")

set conn=Server.CreateObject("ADODB.connection")
Conn.open "provider=Microsoft.Jet.OLEDB.4.0;Data Source =C:\Users\Intecom\Desktop\Pagina Web\Personal.mdb"
Conn.execute "INSERT INTO Pedidos(folio,fehca_c,rfc,codigo_producto,cantidad_producto_comprado) values('"& nom & "','"& email & "','"& coments & "')"
Conn.close
set conn=nothing
response.redirect("GRACIAS.HTML")

%>
</body>
</html>