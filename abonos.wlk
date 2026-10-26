object fan {
  method montoAPagar(entrada) = entrada.precioConImpuesto()
  method bonificar(){} //este abono no tiene bonificacion
}

class Vip {
    var porcentajeDescuento

    method porcentajeDescuento() = porcentajeDescuento
    method montoAPagar(entrada) = entrada.precioConImpuesto() * (1 - porcentajeDescuento / 100)
    method bonificar(){
        porcentajeDescuento += 1
    }
}