<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Villas.Index" %>

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

    </form>
</body>
</html>
