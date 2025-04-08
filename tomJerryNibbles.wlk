object tom {
    var ultimoRatonComido = jerry
    var energia = 50
    var distanciaRecorrida = 0

    //msje indicacion
    method comer(unRaton) {
        energia += 12 + unRaton.peso() //energia = energia + 12 + ...
        ultimoRatonComido = unRaton
    }

    //msje indicacion
    method correr(cantMetros) {
        energia = energia - cantMetros * 0.5
        distanciaRecorrida += cantMetros 
    }

    //msje consulta
    method velocidadMaxima() {
        return 5 + energia / 10
    }

    method energia() {
        return energia
    }

    method puedeCazar(distancia) {
        return energia >= distancia / 2
    }

    method cazar(unRaton, unaDistancia) {
        if (self.puedeCazar(unaDistancia)) {
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
    var edad = 2

    //msje indicacion
    method cumplirAnios() {
        edad += 1
    }

    //msje consulta
    method peso() {
        return edad * 20
    }
}

object nibbles {
    method peso() {
        return 35
    }
}

// nuevo raton

object jorgito {
    var peso = 30   // peso es una referencia, que apunta al objeto 30

    //jorgito puede cambiar su peso a voluntad
    method peso(nuevoPeso) {
        peso = nuevoPeso
    }  

    method peso() {
        return peso
    }
}

