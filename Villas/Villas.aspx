<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Villas.aspx.cs" Inherits="Villas.Villas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
 
</head>
<body>
    <form id="form1" runat="server">
         
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="Index.aspx">Bicicletas</a>
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
        <div class="container">
           
                <div class="row">
                    <div class="col-sm-8 ">
                        <fieldset>
                            <legend>Listado de Villas</legend>
                            <asp:Repeater ID="Repeater1" runat="server">
                          
                                <HeaderTemplate>
                                    <div class="row">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <div class="col-lg-6 ">
                                        <div class="card border-info mb-3" style="max-width: 20rem;">
                                            <div class="card-header"><%# Eval("nombre") %></div>
                                            <div class="card-body">
                                                <p class="card-text"><%# Eval("descripcion") %></p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </div> <%--cierre der div=row--%>
                                </FooterTemplate>
                            </asp:Repeater>

                        </fieldset>
                    </div>

         
                <div class="col-sm-4"> 
          <fieldset>
              <h1>Nueva Villa</h1>
              <div >
                  <label class="control-label" for="disabledInput">Nombre</label>
    <input class="form-control" runat="server" id="nombre" type="text" placeholder="nombre" />
   <textarea id="descripcion" runat="server" class="form-control" placeholder="descripcion"></textarea>
                  <asp:button ID="Registrar" runat="server" Class="btn btn-primary" OnClick="btnRegistrar_Click" Text="REGISTRAR"></asp:button>
              </div>
              </fieldset>

      </div>


</div>

              

        </div>
    </main>
     

    </form>
</body>
</html>
