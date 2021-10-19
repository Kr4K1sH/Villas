<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alquiler.aspx.cs" Inherits="Villas.Alquiler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
 <script type="text/javascript">
     function Calcular() {
         var total = 150;
         var personas = document.getElementById("Personas").value;
         var dias = document.getElementById("Dias").value;
         if (personas > 0){
             total += total * personas;
         } else {
             alert('Se debe de seleccionar al menos una persona o dia')
         }
         if (dias > 0) {
             total += total * dias;
         } else {
             alert('Se debe de seleccionar al menos una persona o dia')
         }
         
         document.getElementById("txtTotal").value = total;
       
     }

 </script>


</head>
<body>
    <form id="form1" runat="server">
            
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="Index.aspx">Villas</a>
    <button aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler" data-target="#navbarColor02" data-toggle="collapse" type="button">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div id="navbarColor02" class="collapse navbar-collapse">
        <ul class="navbar-nav mr-auto">
            
            <li class="nav-item">
                <a class="nav-link" href="Index.aspx">Inicio</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Villas.aspx">Villas</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Alquiler.aspx">Alquiler</a>
            </li>
        </ul>
      
       
    </div>
</nav>
     

  <main>
    
        <div class="row">
            <div class="col-sm-6" style="width: 80%;">
                <fieldset>
                    <legend>Listado de Villas</legend>
                    <asp:Repeater ID="RepeaterVillas" runat="server">
                        <HeaderTemplate>
                            <table class="table table-hover">
                                <tr class="table-info">
                                    <th>Fecha</th>
                                    <th>Cliente</th>
                                    <th>Villa</th>
                                    <th>Cantidad Dias</th>
                                  
                                    <th>Cantidad Personas</th>
                                    <th>Total</th>
                                </tr>
                        </HeaderTemplate>

                        <ItemTemplate>
                            <tr class="table-default">
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("fecha", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("nombreCliente") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("nombrevilla") %>'></asp:Label>
                                </td>
                                
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("cantidadDias","{0:0}") %>'></asp:Label>
                                </td>
                                 <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("cantidadPersonas","{0:0}") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("total","{0:c0}") %>'></asp:Label>
                                </td>
                            </tr>

                        </ItemTemplate>

                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </fieldset>
            </div>
           
          
      
      
      
      
          <div class=" col-sm-6">
                <fieldset >

                    <legend>Nuevo Alquiler</legend>

                    <div class="form-group">
                        <label>Identificación Cliente</label>
                        <input class="form-control" id="idCliente" type="text" placeholder="#-###-###" runat="server" required />
                    </div>

                    <div class="form-group">
                        <label>Nombre Cliente</label>
                        <input class="form-control" id="txtNombreCliente" type="text" runat="server" required />
                    </div>

                    <div class="form-group">
                        <label>Fecha</label>
                        <input class="form-control" id="txtFecha" type="date" runat="server" required />
                    </div>

                    <div class="form-group">
                        <label>Villas</label>
                        <asp:DropDownList ID="ddlVillas" runat="server"></asp:DropDownList>
                    </div>

                   
                  <div class="form-group">
                        <label>Cantidad Dias</label>
                        <input class="form-control" id="Dias" type="number" min="1" max="30" placeholder="##" runat="server" required />
                    </div>

                    <div class="form-group">
                        <label>Cantidad Personas</label>
                        <input class="form-control" id="Personas" type="number" min="1" max="12" placeholder="##" runat="server" required />
                    </div>
                    
                    <div class="form-group">
                        <label class="control-label">Total</label>
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">$</span>
                                </div>
                                <input class="form-control" id="txtTotal" type="text" aria-label="Amount (to the nearest dollar)" runat="server" readonly required />
                                <div class="input-group-append">
                                    <span class="input-group-text">.00</span>
                                </div>
                                <div class="input-group-append">
                              <button type="button" id="calcular" class="btn btn-outline-secondary" onclick="Calcular()">Calcular</button>
                               
                                     </div>
                        </div>
                    </div>
                    <asp:Button ID="btnRegistrar" class="btn btn-primary" runat="server" Text="Registrar" OnClick="btnRegistrar_Click"  />
                </fieldset>
            </div>
        
   
      
      
       </div>
      
        </main>












    </form>
</body>
</html>
