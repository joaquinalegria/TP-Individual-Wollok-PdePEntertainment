import bandas.*
import asistentes.*
import entradas.*

//productora como object pq es una sola: "PdeP entertainment"
object productora {
    // atributos
    const listaDeBandas = []
    const listaDeAsistentes = []
    var property impuesto = 0

    // metodos pedidos por la consigna
    method gananciaTotal() = self.recaudacionTotal() - self.presupuestoTotal()
    method cantidadEntradasVendidas() = self.todasLasEntradasVendidas().size()
    method bandaMasPopular(){
        if(listaDeBandas.isEmpty()){
            self.error("La productora no tiene bandas")
        } 
        return listaDeBandas.max({unaBanda => self.entradasVendidasPorBanda(unaBanda)})
    }
    method bonificarAsistentesVIP(){
        listaDeAsistentes.forEach({unAsistente => unAsistente.bonificarAbono()})
    }

    //metodos auxiliares (usados para delegar)
    method agregarBanda(unaBanda) {
        listaDeBandas.add(unaBanda)
    }

    method agregarAsistente(unAsistente) {
        listaDeAsistentes.add(unAsistente)
    }
 
    method todasLasEntradasVendidas() = listaDeAsistentes.flatMap({unAsistente => unAsistente.entradasCompradas()})
    method recaudacionTotal() = self.todasLasEntradasVendidas().sum({unaEntrada => unaEntrada.precioConImpuesto()})
    method presupuestoTotal() = listaDeBandas.sum({banda => banda.presupuesto()})
    method entradasVendidasPorBanda(unaBanda) = listaDeAsistentes.sum({unAsistente => unAsistente.entradasParaBanda(unaBanda)})
    
    
}