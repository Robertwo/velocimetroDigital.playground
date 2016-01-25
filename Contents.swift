//: Playground - noun: a place where people can play

import UIKit


enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }

    
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String){
        var actual : Int
        var velocidadEnCadena : String
        
        actual = velocidad.rawValue
        
        switch velocidad{
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado"
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad baja"
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad media"
        case .VelocidadAlta:
            velocidad = Velocidades.Apagado
            velocidadEnCadena = "velocidad Alta"
        }
        
        return(actual, velocidadEnCadena)
    }
}



var auto = Auto()

for var x = 1; x <= 20; x++ {
    
    var control = auto.cambioDeVelocidad()
    print("\(x). \(control.actual), \(control.velocidadEnCadena)")
    
    
}
