class Banda {
    const property nombre
    
    method canon() = 1000000
    method gastoExtra()
    method presupuesto() = self.canon() + self.gastoExtra() 
    method popularidad()
}

class BandaDeRock inherits Banda{
    var property solosDeGuitarra
    override method popularidad() = self.solosDeGuitarra() * 100
    override method gastoExtra() = 10000

}

class BandaDeTrap inherits Banda{
    var property tieneHielo 

    override method popularidad() {
        if(tieneHielo){
            return 1000
        } else{
            return 0
        }
    }
    override method gastoExtra() = 0
    override method canon() = self.popularidad() ** 2 //Esta raro el enunciado --> Lo hice así porque si el canon es X veces su popularidad. Para una popularidad = 10 --> Canon = 10 * popularidad = popularidad ^ 2      
}

class BandaIndie inherits Banda{
    const cantInstrumentos
    override method gastoExtra() = 500 * cantInstrumentos
    override method popularidad() = 3.14 * nombre.length()
}
