import productora.*

class Entrada {
    const property banda 
    const property fecha 

    method precioBase() = 1000
    method precioConImpuesto() = self.precioBase() + (self.precioBase() * (productora.impuesto()/100)) 
    method esDelAño(unAño) = fecha.year() == unAño
    method esDeBanda(unaBanda) = banda == unaBanda
}