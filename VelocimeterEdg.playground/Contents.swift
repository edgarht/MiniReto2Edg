//: Playground - noun: a place where people can play

import UIKit



enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
}



class Auto {
    var velocidad = Velocidades(velocidadInicial: .Apagado)
    init(velocidad : Velocidades){
        self.velocidad = velocidad
    }
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        var titulo : String
        
        switch self.velocidad {
            
            
            
        case Velocidades.Apagado:
            self.velocidad = .Apagado
            titulo = "Apagado"
            self.velocidad = .VelocidadBaja
            titulo = "Velocidad Baja"
        case Velocidades.VelocidadBaja:
            self.velocidad = .VelocidadMedia
            titulo = "Velocidad Media"
        case Velocidades.VelocidadMedia:
            self.velocidad = .VelocidadAlta
            titulo = "Velocidad Alta"
        case Velocidades.VelocidadAlta:
            self.velocidad = .VelocidadMedia
            titulo = "Velocidad Media"
            
        }
        return (self.velocidad.rawValue, titulo)
    }
}

var automov = Auto (velocidad: .Apagado)

for i in 1...20{
    if(i == 1){
        print(0, "Apagado")}
    else{
        print ("\(i).\(automov.cambioDeVelocidad()) ") }
}