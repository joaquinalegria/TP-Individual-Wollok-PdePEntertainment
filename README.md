# TP INDIVIDUAL "PdeP Entertainment" WOLLOK

## Conceptos aplicados y justificación de las decisiones

- Polimorfismo: 
	- El polimorfismo lo apliqué en los abonos (fan y vip) para que cuando el metodo comprarEntrada de Asistente calcule montoAPagar(entrada) sin importar que abono posee. Ademas, incluí bonificar() en fan como un metodo vacío para mantener el polimorfismo frente a unAsistente.bonificarAbono() y evitar el uso de condicionales.
	- Tambien hice uso del polimorfismo en las bandas, para calcular la popularidad, el gasto extra y el presupuesto. Para ello, declaré  los metodos abstractos popularidad() y gastoExtra() en la superclase Banda. 
- Composicion: Está aplicado en Asistente respecto a su abono. Elegí composicion debido a que el asistente puede cambiar su abono de fan a vip.
- Herencia: Aplicado en las clases de Banda (rock, trap e indie). Elegí herencia por sobre composicion ya que no cambia el tipo de banda, a diferencia del abono que sí podia cambiar. 
- Delegación y Responsabilidad: 
	- En cuanto a estos puntos, usé estos contenidos para definir que metodos debería realizar el asistente y cuales la entrada (La entrada se encarga de saber de que año y de que banda es, y es el asistente quien determina unicamente el año en el que se encuentra para poder filtrar: Entre sus entradas las del año anterior y de que bandas tiene entradas)
	- En Productora delegué en diferentes metodos auxiliares los calculos de recaudacion y presupuesto total, así como la cantidad de entradas vendidas por banda. 
- Excepciones: Utilice self.error() para lanzar excepciones cuando no se cumplen las condiciones de la consigna, como intentar comprar con un saldo negativo. 

Joaquín Alegria - Grupo 8