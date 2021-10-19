function calcularPrecioVenta() {
    
var imp = document.getElementById("impuesto").checked;
var prec = document.getElementById("precio").value;
var precioV=0;
if (!isNaN(prec)) {
    precioV= parseFloat(prec);
    if (imp == true) {
        precioV += parseFloat(precioV * 0.13);
    }
}
document.getElementById("precioVenta").value = precioV;
}