import entradas.*

class Asistente {
    const abono
    const historialEntradas = []
    var dineroDisponible

    method dineroDisponible() = dineroDisponible
    method abono() = abono
    method entradasCompradas() = historialEntradas

    method comprarEntrada(bandaElegida, fechaElegida){
        if(dineroDisponible > 0){
            const nuevaEntrada = new Entrada(banda = bandaElegida, fecha = fechaElegida)
            const monto = abono.montoAPagar(nuevaEntrada)
            
            historialEntradas.add(nuevaEntrada)
            dineroDisponible -= monto

        } else {
            self.error("Saldo Negativo")
        }
    }

    method entradasDelAñoAnterior() {
        const añoAnterior = new Date().year() - 1
        return historialEntradas.filter({unaEntrada => unaEntrada.esDelAño(añoAnterior)})
    } 
    
    method verBandasCompradas(){
        return historialEntradas.map({unaEntrada => unaEntrada.banda().nombre()}).asSet()
    } 

    method entradasParaBanda(banda) = historialEntradas.count({unaEntrada => unaEntrada.esDeBanda(banda)})

    method bonificarAbono() = abono.bonificar()

}