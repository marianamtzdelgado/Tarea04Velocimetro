import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad : Velocidades
    var velocidadInicial : Int
    
    init(){
        velocidad = .Apagado
        velocidadInicial = velocidad.rawValue
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        velocidadInicial = velocidad.rawValue
        var leyenda : String
        
        switch velocidad{
        case .Apagado:
            velocidad = .VelocidadBaja
            leyenda = "Apagado"
            
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            leyenda  = "Velocidad Baja"
            
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            leyenda = "Velocidad Media"
            
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            leyenda = "Velocidad Alta"
        }
        
        return (velocidadInicial, leyenda)
    }
}


var auto = Auto()
var resultado : (actual : Int, velocidadEnCadena : String)

for num in 1...20{
    resultado = auto.cambioDeVelocidad()
    print("\(num). \(resultado.actual), \(resultado.velocidadEnCadena)")
}